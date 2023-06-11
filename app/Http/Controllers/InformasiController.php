<?php

namespace App\Http\Controllers;

use App\Models\Informasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class InformasiController extends Controller
{
    public function index()
    {
        $data = Informasi::orderBy('no', 'ASC')->paginate(20);
        return view('admin.informasi.index', compact('data'));
    }
    public function create()
    {
        return view('admin.informasi.create');
    }
    public function edit($id)
    {
        $data = Informasi::find($id);
        if ($data->lat == null) {
            $latlong = [
                'lat' => -3.327460,
                'lng' => 114.588515
            ];
        } else {
            $latlong = [
                'lat' => $data->lat,
                'lng' => $data->long
            ];
        }
        return view('admin.informasi.edit', compact('data', 'latlong'));
    }
    public function delete($id)
    {
        $data = Informasi::find($id)->delete();
        Session::flash('success', 'Berhasil Dihapus');
        return back();
    }
    public function store(Request $req)
    {
        $check = Informasi::where('no', $req->no)->first();
        if ($check == null) {
            $n = new Informasi();
            $n->no = $req->no;
            $n->parameter = $req->parameter;
            $n->deskripsi = $req->deskripsi;
            $n->save();

            Session::flash('success', 'Berhasil Disimpan');
            return redirect('/superadmin/informasi');
        } else {
            Session::flash('error', 'Nomor sudah ada, gunakan nomor lain');
            return back();
        }
    }
    public function update(Request $req, $id)
    {
        $data = Informasi::find($id);
        $data->parameter = $req->parameter;
        $data->deskripsi = $req->deskripsi;
        $data->save();
        Session::flash('success', 'Berhasil Diupdate');
        return redirect('/superadmin/informasi');
    }
}
