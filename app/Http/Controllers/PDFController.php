<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PDF;

//use Barryvdh\DomPDF\PDF;

class PDFController extends Controller
{
    //

    public function cetakPDF()
    {
        $viewrumah = DB::table('viewrumah')->select('*')->get();
        $data = [
            'viewrumah' => $viewrumah,
            'tanggal' => date('d/m/y'),
            'judul' => "Laporan Data Bantuan Bedah Rumah"
        ];

        $laporan = PDF::loadView('rumah.laporan', $data)->setPaper('f4', 'landscape');
        //01/10/2024
        $namaTGL = substr(date('d/m/y'), 0, 2) . substr(date('d/m/y'), 3, 2) . substr(date('d/m/y'), 6, 4);
        $namaJAM = substr(date('h:i:s'), 0, 2) . substr(date('h:i:s'), 3, 2) . substr(date('h:i:s'), 6, 2);
        return $laporan->stream('Lap' . $namaTGL . $namaJAM . '.pdf');
    }
}
