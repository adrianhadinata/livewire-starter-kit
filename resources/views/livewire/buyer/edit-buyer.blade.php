<flux:modal name="edit-buyer" class="md:w-900">
    <div class="space-y-6">
        <div>
            <flux:heading size="lg">Edit Buyer</flux:heading>
            <flux:text class="mt-2">Editing a buyer</flux:text>
        </div>  

        <flux:input 
            label="Name" 
            placeholder="e.g. Vanity Fair"
            wire:model="name" 
        />

        <flux:input 
            label="Code" 
            placeholder="e.g. VF"
            wire:model="code" 
        />

        <flux:input 
            label="Email" 
            placeholder="e.g. vanity@fair.com"
            wire:model="email"
            type="email"
        />

        <flux:textarea 
            label="Address" 
            placeholder="e.g. 123 Main St"
            wire:model="address" 
        />

        <div class="flex">
            <flux:spacer />

            <flux:button type="submit" variant="primary" wire:click="update">Update</flux:button>
        </div>
    </div>
</flux:modal>