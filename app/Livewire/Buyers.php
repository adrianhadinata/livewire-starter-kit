<?php

namespace App\Livewire;

use App\Models\BuyerModel;
use Livewire\Component;
use Livewire\WithPagination;
use Flux\Flux;

class Buyers extends Component
{
    use WithPagination;
    public $id, $term;

    public function render()
    {
        if($this->term) {
            $data = BuyerModel::where('name', 'like', '%' . $this->term . '%')->orderByDesc('created_at')->paginate(5);
            return view('livewire.buyers', [
                'data' => $data
            ]);
        } else {
            $data = BuyerModel::orderByDesc('created_at')->paginate(5);
            return view('livewire.buyers', [
                'data' => $data
            ]);
        }
    }

    public function edit($id)
    {
        $this->dispatch('edit-buyer', $id);
    }

    public function delete($id)
    {
        $this->id = $id;

        Flux::modal('delete-buyer')->show();
    }

    public function destroy()
    {
        BuyerModel::find($this->id)->delete();

        Flux::modal('delete-buyer')->close();

        $this->redirectRoute('buyers', navigate: true);
        session()->flash('success', 'Buyer deleted successfully.');
    }
}
