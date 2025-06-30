<flux:modal name="create-buyer" class="md:w-900">
    <div class="space-y-6">
        <div>
            <flux:heading size="lg">Create Buyer</flux:heading>
            <flux:text class="mt-2">Fill the form below to create a new buyer</flux:text>
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

            <flux:button type="submit" variant="primary" wire:click="save">Save</flux:button>
        </div>
    </div>
</flux:modal>