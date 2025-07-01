<?php

namespace App\Livewire;

use App\Models\BomModel;
use Livewire\Component;
use Livewire\WithPagination;
use Flux\Flux;
use Illuminate\Support\Facades\DB;

class Boms extends Component
{

    use WithPagination;
    public $id, $term;

    public function render()
    {
        $data = BomModel::select(DB::raw("PWN_Main.statuspo,
            FORMAT (PWN_Main.Pwn_CreatedDate, 'yyyy-MM-dd') AS Pwn_CreatedDate,
            PWN_Main.PWN_No_Alias,
            PWN_PO_Details.Cust_PO,
            FORMAT (PWN_PO_Details.CustReq_Del_Dt, 'yyyy-MM-dd') AS CustReq_Del_Dt,
            PWN_PO_Details.article,
            Customer_Master.discription AS buyer,
            NULL AS MD,
            PWN_PO_Details.Total_Qty,
            PWN_Main.DateModified,
            PWN_Main.Seq_code"))
            ->join('PWN_PO_Details', 'PWN_Main.Seq_code', '=', 'PWN_PO_Details.PWN_Seq_Code')
            ->join('Customer_Master', 'PWN_Main.Cust_Seq_Code', '=', 'Customer_Master.seq_code')
            ->orderByDesc('PWN_Main.Pwn_CreatedDate')->paginate(5);

        return view('livewire.boms', [
            'data' => $data
        ]);
    }
}
