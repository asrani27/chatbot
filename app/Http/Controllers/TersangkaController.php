<?php

namespace App\Http\Controllers;

use App\Models\Tersangka;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class TersangkaController extends Controller
{
    public function index()
    {
        $data = Tersangka::orderBy('id', 'DESC')->paginate(15);
        return view('admin.tersangka.index', compact('data'));
    }

    public function create()
    {
        return view('admin.tersangka.create');
    }
    public function edit($id)
    {
        $data = Tersangka::find($id);
        return view('admin.tersangka.edit', compact('data'));
    }
    public function store(Request $req)
    {
        $check = Tersangka::where('nik', $req->nik)->first();
        if ($check != null) {
            Session::flash('error', 'NIK Sudah Ada');
            return back();
        } else {
            tersangka::create($req->all());
            Session::flash('success', 'Berhasil');
            return redirect('/superadmin/tersangka');
        }
    }
    public function update(Request $req, $id)
    {
        $data = Tersangka::find($id)->update($req->all());
        Session::flash('success', 'Berhasil');
        return redirect('/superadmin/tersangka');
    }
    public function delete($id)
    {
        $data = Tersangka::find($id)->delete();
        Session::flash('success', 'Berhasil');
        return redirect('/superadmin/tersangka');
    }
}
