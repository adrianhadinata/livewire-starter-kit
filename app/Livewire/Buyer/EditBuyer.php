<?php

namespace App\Livewire\Buyer;

use Livewire\Attributes\On;
use Livewire\Component;
use App\Models\BuyerModel;
use Illuminate\Validation\Rule;
use Flux\Flux;

class EditBuyer extends Component
{
    public $name, $code, $email, $address, $id;

    #[On('edit-buyer')]
    public function edit($id)
    {
        // dd("edit note received with ID: " . $id);
        $data = BuyerModel::findOrFail($id);
        $this->name = $data->name;
        $this->code = $data->code;
        $this->email = $data->email;
        $this->address = $data->address;
        $this->id = $data->id;

        Flux::modal('edit-buyer')->show();
    }

    public function update()
    {
        $this->validate([
            'name' => 'required',
            'code' => 'required',
            'email' => 'required',
            'address' => 'required',
        ]);

        $buyer = BuyerModel::find($this->id);
        
        $buyer->name = $this->name;
        $buyer->code = $this->code;
        $buyer->email = $this->email;
        $buyer->address = $this->address;
        $buyer->save();

        Flux::modal('edit-buyer')->close();

        $this->redirectRoute('buyers', navigate: true);
        session()->flash('success', 'Buyer updated successfully.');
    }

    public function render()
    {
        return view('livewire.buyer.edit-buyer');
    }
}
