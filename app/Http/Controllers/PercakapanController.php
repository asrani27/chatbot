<?php

namespace App\Http\Controllers;

use App\Models\Percakapan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PercakapanController extends Controller
{
    public function index()
    {
        $data = Percakapan::groupBy('chat_id')->select('chat_id', DB::raw('max(created_at) as tanggal'))->paginate(15);

        return view('admin.percakapan.index', compact('data'));
    }

    public function detail($chat_id)
    {
        $data = Percakapan::where('chat_id', $chat_id)->get();

        return view('admin.percakapan.detail', compact('data'));
    }
}
