<?php

namespace App\Livewire\Buyer;

use App\Models\BuyerModel;
use Flux\Flux;
use Livewire\Component;

class CreateBuyer extends Component
{
    public $name, $code, $email, $address;

    protected function rules()
    {
        return [
            'name' => 'required',
            'code' => 'required',
            'email' => 'required',
            'address' => 'required',
        ];
    }

    public function save()
    {
        $this->validate();
        
        BuyerModel::create([
            'name' => $this->name,
            'code' => $this->code,
            'email' => $this->email,
            'address' => $this->address
        ]);

        $this->reset();
        Flux::modal('create-buyer')->close();

        $this->redirectRoute('buyers', navigate: true);
        session()->flash('success', 'Buyer created successfully.');
    }

    public function render()
    {
        return view('livewire.buyer.create-buyer');
    }
}
