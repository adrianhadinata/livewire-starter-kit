<div class="relative mb-6 w-full">
    <flux:heading size="xl" level="1">{{ __('Buyers') }}</flux:heading>
    <flux:subheading size="lg" class="mb-6">{{ __('Manage buyers') }}</flux:subheading>
    <flux:separator variant="subtle" />

    @session('success')
    <div
        x-data="{ show: true }"
        x-init="setTimeout(() => {show = false}, 2000)"
        x-show="show"
        class="fixed top-5 right-5 bg-green-600 text-white p-4 rounded-lg shadow-lg"
        role="alert"
    >
        <p>{{ $value }}</p>
    </div>
    @endsession
    <livewire:buyer.create-buyer />
    <livewire:buyer.edit-buyer />

    <div class="w-full flex justify-between items-center mb-3 mt-1">
    {{-- <div class="w-full flex"> --}}
        <flux:modal.trigger name="create-buyer">
            <flux:button class="mt-4">Create Buyer</flux:button>
        </flux:modal.trigger>
        {{-- <div>
            <h3 class="text-lg font-semibold text-slate-800">Projects with Invoices</h3>
            <p class="text-slate-500">Overview of the current activities.</p>
        </div> --}}
        {{-- <div class="ml-3"> --}}
        <div>
            <div class="w-full max-w-sm min-w-[200px] relative">
            <div class="relative">
                <input
                class="bg-white w-full pr-11 h-10 pl-3 py-2 bg-transparent placeholder:text-slate-400 text-slate-700 text-sm border border-slate-200 rounded transition duration-200 ease focus:outline-none focus:border-slate-400 hover:border-slate-400 shadow-sm focus:shadow-md"
                placeholder="Search for buyer..."
                wire:model.live.debounce.500ms="term"
                />
                <button
                class="absolute h-8 w-8 right-1 top-1 my-auto px-2 flex items-center bg-white rounded "
                type="button"
                >
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="3" stroke="currentColor" class="w-8 h-8 text-slate-600">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                </svg>
                </button>
            </div>
            </div>
        </div>
    </div>
     
    <div class="relative flex flex-col w-full h-full overflow-scroll text-gray-700 bg-white shadow-md rounded-lg bg-clip-border mt-4">
        <table class="w-full text-left table-auto min-w-max">
            <thead>
            <tr>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                <p class="text-sm font-normal leading-none text-slate-500">
                    Code
                </p>
                </th>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                <p class="text-sm font-normal leading-none text-slate-500">
                    Name
                </p>
                </th>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                <p class="text-sm font-normal leading-none text-slate-500">
                    Email
                </p>
                </th>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                <p class="text-sm font-normal leading-none text-slate-500">
                    Address
                </p>
                </th>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                <p class="text-sm font-normal leading-none text-slate-500">
                    Created At
                </p>
                </th>
                <th class="p-4 border-b border-slate-200 bg-slate-50">
                    <p class="text-sm font-normal leading-none text-slate-500">
                        Actions
                    </p>
                </th>
            </tr>
            </thead>
            <tbody>
            @forelse ( $data as $buyer )
                <tr class="hover:bg-slate-50 border-b border-slate-200">
                    <td class="p-4 py-5">
                        <p class="block font-semibold text-sm text-slate-800">{{ $buyer->code }}</p>
                    </td>
                    <td class="p-4 py-5">
                        <p class="text-sm text-slate-500">{{ $buyer->name }}</p>
                    </td>
                    <td class="p-4 py-5">
                        <p class="text-sm text-slate-500">{{ $buyer->email }}</p>
                    </td>
                    <td class="p-4 py-5">
                        <p class="text-sm text-slate-500">{{ $buyer->address }}</p>
                    </td>
                    <td class="p-4 py-5">
                        <p class="text-sm text-slate-500">{{ $buyer->created_at }}</p>
                    </td>
                    <td class="p-4 py-5">
                        <flux:button wire:click="edit({{ $buyer->id }})" size="sm">Edit</flux:button>
                        <flux:button variant="danger" wire:click="delete({{ $buyer->id }})" size="sm">Delete</flux:button>
                    </td>
                </tr>
            @empty
                <tr class="hover:bg-slate-50 border-b border-slate-200">
                    <td class="p-4 py-5" colspan="6">
                        <p class="block font-semibold text-sm text-slate-800">No data found</p>
                    </td>
                </tr>
            @endforelse
            
            </tbody>
        </table>
     
        <div class="flex justify-between items-center px-4 py-3">
            {{ $data->links() }}
        </div>
    </div>

    <flux:modal name="delete-buyer" class="min-w-[22rem]">
        <div class="space-y-6">
            <div>
                <flux:heading size="lg">Delete buyer?</flux:heading>

                <flux:text class="mt-2">
                    <p>You're about to delete this buyer.</p>
                    <p>This action cannot be reversed.</p>
                </flux:text>
            </div>

            <div class="flex gap-2">
                <flux:spacer />

                <flux:modal.close>
                    <flux:button variant="ghost">Cancel</flux:button>
                </flux:modal.close>

                <flux:button type="submit" variant="danger" wire:click="destroy()">Delete</flux:button>
            </div>
        </div>
    </flux:modal>
</div>
