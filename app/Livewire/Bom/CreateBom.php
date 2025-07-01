<?php

namespace App\Livewire\Bom;

use Livewire\Component;
use App\Models\Customer_Master;

class CreateBom extends Component
{
    public function render()
    {
        $buyers = Customer_Master::all();
        return view('livewire.bom.create-bom', ['customers' => $buyers]);
    }
}
