<flux:modal name="create-bom" class="min-w-screen min-h-screen">
{{-- <flux:modal name="create-bom"> --}}
    <div class="space-y-6">
        <div>
            <flux:heading size="lg">Create BOM</flux:heading>
            <flux:text class="mt-2">Fill the form below to create a new BOM</flux:text>
        </div>  

        <div class="relative flex flex-col my-6 bg-white shadow-sm border border-slate-200 rounded-lg w-full">
            <div class="mx-3 mb-0 border-b border-slate-200 pt-3 pb-2 px-1">
              <span class="text-sm text-slate-600 font-medium">
                General Information
              </span>
            </div>
            
            <div class="p-4 grid grid-cols-3 gap-4">
                <div>
                    <flux:input 
                        label="* WO"
                        placeholder="e.g. 240899"
                        wire:model="wo"
                        class="mb-2"
                    />

                    <flux:input 
                        label="* Style" 
                        placeholder="e.g. 76380"
                        wire:model="style"
                        class="mb-2"
                    />

                    <flux:input 
                        label="* WO Date" 
                        placeholder="e.g. 24-08-1999"
                        wire:model="wodate"
                        type="date"
                        class="mb-2"
                    />

                    <flux:select size="sm" label="Status" wire:model="status" class="mb-2" placeholder="Choose a status...">
                        <flux:select.option>Not Complete</flux:select.option>
                        <flux:select.option>Complete</flux:select.option>
                    </flux:select>

                    <flux:input 
                        label="ORC" 
                        placeholder="e.g. G1-234-1"
                        wire:model="orc"
                        class="mb-2"
                    />

                    <flux:input 
                        label="PI Number" 
                        placeholder="e.g. 12345"
                        wire:model="pinumber"
                        class="mb-2"
                    />
                </div>

                <div>
                    <flux:select label="* Customer Name" wire:model="customername" class="mb-2" placeholder="Choose a customer...">
                        @foreach ($customers as $customer)
                            <flux:select.option>{{ $customer->discription }}</flux:select.option>
                        @endforeach
                    </flux:select>

                    <flux:input 
                        label="Customer Req. Delivery Date" 
                        placeholder="e.g. 24-08-1999"
                        wire:model="customerreqdeliverydate"
                        type="date"
                        class="mb-2"
                    />

                    <flux:select label="* Division" wire:model="division" class="mb-2" placeholder="Choose a division...">
                        <flux:select.option>BRA</flux:select.option>
                        <flux:select.option>PANTY</flux:select.option>
                        <flux:select.option>LINGERIE</flux:select.option>
                        <flux:select.option>TOP</flux:select.option>
                    </flux:select>

                    <flux:select label="Agent Name" wire:model="agentname" class="mb-2" placeholder="Choose an agent...">
                        <flux:select.option>DIRECT</flux:select.option>
                    </flux:select>

                    <flux:fieldset class="mb-2">
                        <flux:legend>Configuration</flux:legend>

                        <div class="space-y-3">
                            <flux:switch label="From Costing" align="right" />
                            <flux:switch label="Copy Mode" align="right" />
                        </div>
                    </flux:fieldset>
                </div>

                <div>
                    <flux:select label="* Collection" wire:model="collection" class="mb-2" placeholder="Choose a collection...">
                        <flux:select.option>BRA</flux:select.option>
                        <flux:select.option>PANTY</flux:select.option>
                        <flux:select.option>LINGERIE</flux:select.option>
                        <flux:select.option>TOP</flux:select.option>
                    </flux:select>

                    <flux:select label="* Product Group" wire:model="productgroup" class="mb-2" placeholder="Choose a product group...">
                        <flux:select.option>BRA</flux:select.option>
                    </flux:select>

                    <flux:input 
                        label="Internal Delivery Date" 
                        placeholder="e.g. 24-08-1999"
                        wire:model="internaldeliverydate"
                        type="date"
                        class="mb-2"
                    />

                    <flux:input 
                        label="Shipment Date" 
                        placeholder="e.g. 24-08-1999"
                        wire:model="shipmentdate"
                        type="date"
                        class="mb-2"
                    />

                    <flux:select label="MD Name" wire:model="mdname" class="mb-2" placeholder="Choose a MD...">
                        @foreach ($customers as $customer)
                            <flux:select.option>{{ $customer->name }}</flux:select.option>
                        @endforeach
                    </flux:select>

                    <flux:select label="Location" wire:model="location" class="mb-2" placeholder="Choose a location...">
                        <flux:select.option>PT. Globalindo Intimates</flux:select.option>
                    </flux:select>
                </div>
            </div>
        </div>
        
        <div class="relative flex flex-col my-6 bg-white shadow-sm border border-slate-200 rounded-lg w-full">
            <div class="w-full">
                <div class="relative right-0">
                    <ul class="relative flex flex-wrap px-1.5 py-1.5 list-none rounded-md bg-slate-100" data-tabs="tabs" role="list">
                        <li class="z-30 flex-auto text-center">
                            <a class="z-30 flex items-center justify-center w-full px-0 py-2 text-sm mb-0 transition-all ease-in-out border-0 rounded-md cursor-pointer text-slate-600 bg-inherit"
                            data-tab-target="" role="tab" aria-selected="true" aria-controls="customer">
                                Customer
                            </a>
                        </li>
                        <li class="z-30 flex-auto text-center">
                            <a class="z-30 flex items-center justify-center w-full px-0 py-2 mb-0 text-sm transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-600 bg-inherit"
                            data-tab-target="" role="tab" aria-selected="false"  aria-controls="preparation">
                                Preparation
                            </a>
                        </li>
                        <li class="z-30 flex-auto text-center">
                            <a class="z-30 flex items-center justify-center w-full px-0 py-2 text-sm mb-0 transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-700 bg-inherit"
                            data-tab-target="" role="tab" aria-selected="false" aria-controls="bomfabric">
                                BOM Fabric
                            </a>
                        </li>
                        <li class="z-30 flex-auto text-center">
                            <a class="z-30 flex items-center justify-center w-full px-0 py-2 text-sm mb-0 transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-700 bg-inherit"
                            data-tab-target="" role="tab" aria-selected="false" aria-controls="bomacc">
                                BOM Accesories
                            </a>
                        </li>
                        <li class="z-30 flex-auto text-center">
                            <a class="z-30 flex items-center justify-center w-full px-0 py-2 text-sm mb-0 transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-700 bg-inherit"
                            data-tab-target="" role="tab" aria-selected="false" aria-controls="process">
                                Process
                            </a>
                        </li>
                    </ul>
               
                    <div data-tab-content="" class="p-5">
                        <div id="customer" role="tabpanel">
                            <div class="p-4 grid grid-cols-3 gap-4">
                                <div>
                                    <flux:select label="Agent Name" wire:model="agentname" class="mb-2" placeholder="Choose an agent...">
                                        <flux:select.option>DIRECT</flux:select.option>
                                    </flux:select>

                                    <flux:select label="Production" wire:model="production" class="mb-2" placeholder="Choose a production...">
                                        <flux:select.option>INHOUSE</flux:select.option>
                                        <flux:select.option>OUTHOUSE</flux:select.option>
                                    </flux:select>
                                </div>

                                <div>
                                    <flux:select label="* Division" wire:model="division" class="mb-2" placeholder="Choose a division...">
                                        <flux:select.option>BRA</flux:select.option>
                                        <flux:select.option>PANTY</flux:select.option>
                                        <flux:select.option>LINGERIE</flux:select.option>
                                        <flux:select.option>TOP</flux:select.option>
                                    </flux:select>

                                    <flux:select label="Order" wire:model="order" class="mb-2" placeholder="Choose an order...">
                                        <flux:select.option>CMT</flux:select.option>
                                        <flux:select.option>FOB</flux:select.option>
                                    </flux:select>

                                    <flux:select label="Factory Name" wire:model="factoryname" class="mb-2" placeholder="Choose a factory...">
                                        <flux:select.option>Select an option...</flux:select.option>
                                        <flux:select.option>PT. DDAIWOBO</flux:select.option>
                                    </flux:select>
                                </div>

                                <div>
                                    <flux:input 
                                        label="Rate" 
                                        placeholder="e.g. 10.0"
                                        wire:model="rate"
                                        class="mb-2"
                                    />

                                    <flux:input 
                                        label="CPM Cost" 
                                        placeholder="e.g. 10.0"
                                        wire:model="cpmcost"
                                        class="mb-2"
                                    />

                                    <flux:select label="Currency" wire:model="currency" class="mb-2" placeholder="Choose a currency...">
                                        <flux:select.option>USD</flux:select.option>
                                        <flux:select.option>IDR</flux:select.option>
                                    </flux:select>
                                </div>
                            </div>

                            <div class="relative flex flex-col my-6 bg-white shadow-sm border border-slate-200 rounded-lg w-full">
                                {{-- <div class="mx-3 mb-0 border-b border-slate-200 pt-3 pb-2 px-1">
                                  <span class="text-sm text-slate-600 font-medium">
                                    General Information
                                  </span>
                                </div> --}}
                                
                                <div class="p-4">
                                    <table class="w-full text-left table-auto min-w-max">
                                        <thead>
                                            <tr>
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
                                                        Telephone
                                                    </p>
                                                </th>
                                                <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                    <p class="text-sm font-normal leading-none text-slate-500">
                                                        Phone
                                                    </p>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="hover:bg-slate-50 border-b border-slate-200">
                                                <td class="p-4 py-5" colspan="6">
                                                    <p class="block font-semibold text-sm text-slate-800">No data found</p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="hidden opacity-0" id="preparation" role="tabpanel">
                          <div class="p-4 grid grid-cols-3 gap-4">

                            <div>
                                <flux:select label="Customer Sheet Number" wire:model="customersheetnumber" class="mb-2" placeholder="Choose Cust Sheet No...">
                                    <flux:select.option>3363</flux:select.option>
                                    <flux:select.option>3364</flux:select.option>
                                    <flux:select.option>3365</flux:select.option>
                                </flux:select>

                                <div class="flex">
                                  <flux:input 
                                    label="Customer Price" 
                                    placeholder="e.g. 10.0"
                                    wire:model="customerprice"
                                    class="mb-2"
                                  />
                                  <flux:select label="Currency" wire:model="customercurrency" class="mb-2" placeholder="Choose currency...">
                                    <flux:select.option>USD</flux:select.option>
                                    <flux:select.option>IDR</flux:select.option>
                                  </flux:select>
                                </div>

                                <div class="flex">
                                  <flux:input 
                                    label="Internal Price" 
                                    placeholder="e.g. 10.0"
                                    wire:model="customerprice"
                                    class="mb-2"
                                  />
                                  <flux:select label="Internal Price" wire:model="internalcurrency" class="mb-2" placeholder="Choose currency...">
                                    <flux:select.option>USD</flux:select.option>
                                    <flux:select.option>IDR</flux:select.option>
                                  </flux:select>
                                </div>

                                <flux:input 
                                  label="Total Garment Quantity" 
                                  placeholder="e.g. 100"
                                  wire:model="totalgarmentquantity"
                                  class="mb-2"
                                />
                            </div>

                            <div>
                                <flux:select label="SWN#" wire:model="swn" class="mb-2" placeholder="Choose SWN...">
                                  <flux:select.option>ANG/JACKET | 1</flux:select.option>
                                  <flux:select.option>xxx | 2</flux:select.option>
                                </flux:select>

                                <flux:input 
                                  label="Work Sheet Recorded Date" 
                                  placeholder="e.g. 24-08-1999"
                                  wire:model="worksheetrecordeddate"
                                  type="date"
                                  class="mb-2"
                                />

                                <flux:input 
                                  label="Customer Req. Delivery Date" 
                                  placeholder="e.g. 24-08-1999"
                                  wire:model="customerreqdeliverydate"
                                  type="date"
                                  class="mb-2"
                                />

                                <flux:input 
                                  label="Internal Delivery Date" 
                                  placeholder="e.g. 24-08-1999"
                                  wire:model="internaldeliverydate"
                                  type="date"
                                  class="mb-2"
                                />
                            </div>

                            <div>
                                <flux:input 
                                    label="CPM Cost" 
                                    placeholder="e.g. 10.0"
                                    wire:model="cpmcost"
                                    class="mb-2"
                                />

                                <flux:input 
                                  label="Extended Delivery Date" 
                                  placeholder="e.g. 24-08-1999"
                                  wire:model="extendeddeliverydate"
                                  type="date"
                                  class="mb-2"
                                />
                            </div>
                        </div>

                        <div class="relative flex flex-col my-6 bg-white shadow-sm border border-slate-200 rounded-lg w-full">
                            {{-- <div class="mx-3 mb-0 border-b border-slate-200 pt-3 pb-2 px-1">
                              <span class="text-sm text-slate-600 font-medium">
                                General Information
                              </span>
                            </div> --}}
                            
                            <div class="p-4">
                                <table class="w-full text-left table-auto min-w-max">
                                    <thead>
                                        <tr>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    PO Customer
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Style
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Customer Delivery Date
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Color Name
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Shipment Mode
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Shipment Term
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Payment Term
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    SO COMM
                                                </p>
                                            </th>
                                            <th class="p-4 border-b border-slate-200 bg-slate-50">
                                                <p class="text-sm font-normal leading-none text-slate-500">
                                                    Total Quantity
                                                </p>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="hover:bg-slate-50 border-b border-slate-200">
                                            <td class="p-4 py-5" colspan="6">
                                                <p class="block font-semibold text-sm text-slate-800">No data found</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        </div>
                        <div class="hidden opacity-0" id="bomfabric" role="tabpanel">
                          <div class="p-4 overflow-auto">
                            <table class="w-full text-left table-auto min-w-max">
                                <thead>
                                    <tr>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                              Garment Fabric
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                              Other Fabric
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Internal Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Fabric Quality
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Customer Item Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            PWN Seq. Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Consumption MAP
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Units MAP
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Consumption Per
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Units
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Color Garment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Size Garment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Fabric Color
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Order Quantity
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Total Quantity
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Extra %
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Supplier
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Budget Price
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Garment Placement
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Comment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Supplier Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            IPR
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Organized By
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           PWN No
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           Price Cost
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           Total
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           Total Order
                                          </p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="hover:bg-slate-50 border-b border-slate-200">
                                        <td class="p-4 py-5" colspan="6">
                                            <p class="block font-semibold text-sm text-slate-800">No data found</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="hidden opacity-0" id="bomacc" role="tabpanel">
                          <div class="p-4 overflow-auto">
                            <table class="w-full text-left table-auto min-w-max">
                                <thead>
                                    <tr>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Accessories
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Accessories Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Article
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Item Name
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Customer Item Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Consumption MAP
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Units MAP
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Consumption Per Garment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Units
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Color Garment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Size Garment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Item Color
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Order Quantity
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Total Quantity
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Extra %
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Supplier
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Budget Price
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Garment Placement
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Comment
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            Supplier Code
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                            IPR
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           Price Cost
                                          </p>
                                        </th>
                                        <th class="p-4 border-b border-slate-200 bg-slate-50">
                                          <p class="text-sm font-normal leading-none text-slate-500">
                                           Total Order
                                          </p>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="hover:bg-slate-50 border-b border-slate-200">
                                        <td class="p-4 py-5" colspan="6">
                                            <p class="block font-semibold text-sm text-slate-800">No data found</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="hidden opacity-0" id="process" role="tabpanel">
                        <p class="text-slate-400 font-light">
                            Comparing yourself to others is the thief of joy.
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="flex">
            <flux:spacer />

            <flux:button type="submit" variant="primary" wire:click="save">Save</flux:button>
        </div>
    </div>
</flux:modal>

@script
<script>
    (function () {
  var total = document.querySelectorAll("[data-tabs]");

  var getEventTarget = function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement;
  };

  total.forEach(function (item, i) {
    var moving_div = document.createElement("div");
    var first_li = item.querySelector("li:first-child [data-tab-target]");
    var tab = first_li.cloneNode();
    tab.innerHTML = "-";
    tab.classList.remove("bg-inherit", "text-slate-700");
    tab.classList.add("bg-white", "text-white");
    tab.style.animation = ".2s ease";

    moving_div.classList.add(
      "z-10",
      "absolute",
      "text-slate-700",
      "rounded-lg",
      "bg-inherit",
      "flex-auto",
      "text-center",
      "bg-none",
      "border-0",
      "block",
      "shadow"
    );
    moving_div.setAttribute("moving-tab", "");
    moving_div.setAttribute("data-tab-target", "");
    moving_div.appendChild(tab);
    item.appendChild(moving_div);

    var list_length = item.getElementsByTagName("li").length;

    moving_div.style.padding = "0px";
    moving_div.style.width =
      item.querySelector("li:nth-child(1)").offsetWidth + "px";
    moving_div.style.transform = "translate3d(0px, 0px, 0px)";
    moving_div.style.transition = ".5s ease";

    item.onmouseover = function (event) {
      let target = getEventTarget(event);
      let li = target.closest("li");
      if (li) {
        let nodes = Array.from(li.closest("ul").children);
        let index = nodes.indexOf(li) + 1;
        item.querySelector(
          "li:nth-child(" + index + ") [data-tab-target]"
        ).onclick = function () {
          item.querySelectorAll("li").forEach(function (list_item) {
            list_item.firstElementChild.removeAttribute("active");
            list_item.firstElementChild.setAttribute(
              "aria-selected",
              "false"
            );
          });
          li.firstElementChild.setAttribute("active", "");
          li.firstElementChild.setAttribute("aria-selected", "true");
          moving_div = item.querySelector("[moving-tab]");
          let sum = 0;
          if (item.classList.contains("flex-col")) {
            for (var j = 1; j <= nodes.indexOf(li); j++) {
              sum += item.querySelector(
                "li:nth-child(" + j + ")"
              ).offsetHeight;
            }
            moving_div.style.transform =
              "translate3d(0px," + sum + "px, 0px)";
            moving_div.style.height = item.querySelector(
              "li:nth-child(" + j + ")"
            ).offsetHeight;
          } else {
            for (var j = 1; j <= nodes.indexOf(li); j++) {
              sum += item.querySelector(
                "li:nth-child(" + j + ")"
              ).offsetWidth;
            }
            moving_div.style.transform =
              "translate3d(" + sum + "px, 0px, 0px)";
            moving_div.style.width =
              item.querySelector("li:nth-child(" + index + ")").offsetWidth +
              "px";
          }
        };
      }
    };
  });

  window.addEventListener("resize", function (event) {
    total.forEach(function (item, i) {
      item = item.parentElement.firstElementChild;

      item.querySelector("[moving-tab]").remove();
      var moving_div = document.createElement("div");
      var tab = item.querySelector("[data-tab-target][aria-selected='true']").cloneNode();
      tab.innerHTML = "-";
      tab.classList.remove("bg-inherit");
      tab.classList.add("bg-white", "text-white");
      tab.style.animation = ".2s ease";

      moving_div.classList.add(
        "z-10",
        "absolute",
        "text-slate-700",
        "rounded-lg",
        "bg-inherit",
        "flex-auto",
        "text-center",
        "bg-none",
        "border-0",
        "block",
        "shadow"
      );
      moving_div.setAttribute("moving-tab", "");
      moving_div.setAttribute("data-tab-target", "");
      moving_div.appendChild(tab);

      item.appendChild(moving_div);

      moving_div.style.padding = "0px";
      moving_div.style.transition = ".5s ease";

      let li = item.querySelector("[data-tab-target][aria-selected='true']").parentElement;

      if (li) {
        let nodes = Array.from(li.closest("ul").children);
        let index = nodes.indexOf(li) + 1;

        let sum = 0;
        if (item.classList.contains("flex-col")) {
          for (var j = 1; j <= nodes.indexOf(li); j++) {
            sum += item.querySelector("li:nth-child(" + j + ")").offsetHeight;
          }
          moving_div.style.transform = "translate3d(0px," + sum + "px, 0px)";
          moving_div.style.width =
            item.querySelector("li:nth-child(" + index + ")").offsetWidth +
            "px";
          moving_div.style.height = item.querySelector(
            "li:nth-child(" + j + ")"
          ).offsetHeight;
        } else {
          for (var j = 1; j <= nodes.indexOf(li); j++) {
            sum += item.querySelector("li:nth-child(" + j + ")").offsetWidth;
          }
          moving_div.style.transform = "translate3d(" + sum + "px, 0px, 0px)";
          moving_div.style.width =
            item.querySelector("li:nth-child(" + index + ")").offsetWidth +
            "px";
        }
      }
    });
    if (window.innerWidth < 991) {
      total.forEach(function (item, i) {
        if (!item.classList.contains("flex-col")) {
          item.classList.add("flex-col", "on-resize");
        }
      });
    } else {
      total.forEach(function (item, i) {
        if (item.classList.contains("on-resize")) {
          item.classList.remove("flex-col", "on-resize");
        }
      });
    }
  });
  var total = document.querySelectorAll("[data-tab-content]");
  if (total[0]) {
    total.forEach(function (nav_pills) {
      var links = nav_pills.parentElement.querySelectorAll(
        "li a[data-tab-target]"
      );
      links.forEach(function (link) {
        link.addEventListener("click", function () {
          var clicked_tab = document.querySelector(
            "#" + link.getAttribute("aria-controls")
          );

          if (!clicked_tab.classList.contains("block", "opacity-100")) {
            var active_link = clicked_tab
              .closest("[data-tab-content]")
              .parentElement.querySelector(
                "li a[data-tab-target][aria-selected='true']"
              );

            var active_panel = document.querySelector(
              "#" + active_link.getAttribute("aria-controls")
            );

            active_panel.classList.remove("block", "opacity-100");
            active_panel.classList.add("hidden", "opacity-0");
            clicked_tab.classList.add("block", "opacity-100");
            clicked_tab.classList.remove("hidden", "opacity-0");
          }
        });
      });
    });
  }
})();
</script>
@endscript