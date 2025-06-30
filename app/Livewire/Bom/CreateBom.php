<?php

namespace App\Livewire\Bom;

use Livewire\Component;
use App\Models\BuyerModel;

class CreateBom extends Component
{
    public function render()
    {
        $buyers = BuyerModel::all();
        return view('livewire.bom.create-bom', ['customers' => $buyers]);
    }
}
