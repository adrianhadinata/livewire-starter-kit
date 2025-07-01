<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="dark">
    <head>
        @include('partials.head')
    </head>
    <body class="min-h-screen bg-white dark:bg-zinc-800">
        {{-- <flux:sidebar sticky stashable class="border-e border-zinc-200 text-white bg-indigo-400 dark:border-zinc-700 dark:bg-zinc-900 w-64"> --}}
        <flux:sidebar sticky stashable class="border-e border-zinc-200 bg-zinc-50 dark:border-zinc-700 dark:bg-zinc-900 w-64">
            <flux:sidebar.toggle class="lg:hidden" icon="x-mark" />

            <a href="{{ route('dashboard') }}" class="me-5 flex items-center space-x-2 rtl:space-x-reverse" wire:navigate>
                <x-app-logo />
            </a>

            <flux:navlist variant="outline">
                {{-- <flux:navlist.group :heading="__('Platform')" class="grid"> --}}
                    {{-- <flux:navlist.item icon="home" :href="route('dashboard')" :current="request()->routeIs('dashboard')" wire:navigate>{{ __('Dashboard') }}</flux:navlist.item> --}}
                    {{-- <flux:navlist.item icon="home" :href="route('buyers')" :current="request()->routeIs('buyers')" wire:navigate>{{ __('Buyers') }}</flux:navlist.item> --}}
                {{-- </flux:navlist.group> --}}

                <flux:navlist.item icon="home" :href="route('dashboard')" :current="request()->routeIs('dashboard')" wire:navigate>{{ __('Dashboard') }}</flux:navlist.item>

                {{-- <flux:navlist.group heading="Master" expandable>
                    <flux:navlist.item :href="route('buyers')" :current="request()->routeIs('buyers')" wire:navigate>{{ __('Buyers') }}</flux:navlist.item>
                </flux:navlist.group>

                <flux:navlist.group heading="Marketing / Merchandiser" expandable>
                    <flux:navlist.item href="#" :href="route('boms')" :current="request()->routeIs('boms')" wire:navigate>{{ __('Boms') }}</flux:navlist.item>
                </flux:navlist.group> --}}

                @foreach ($menus as $menu)
                    @php
                        $groupmenu;
                    @endphp

                    @if ($menu['level'] == 1)
                        <flux:navlist.group heading="{!! $menu['CaptionFOrm'] !!}" expandable :expanded="false" class="mt-2" style="text-align: left">
                        @php
                            $groupmenu = $menu['GroupMenuSUb'];
                        @endphp

                            @foreach ($menus as $index => $sub)
                                {{-- @if ($sub['level'] == 2 && $sub['GroupMenuSUb'] == $groupmenu && $menus[($index + 1) >= count($menus) ? count($menus) - 1 : $index + 1]['level'] != 3) --}}
                                @if ($sub['level'] == 2 && $sub['GroupMenuSUb'] == $groupmenu)
                                    @php
                                        $routeName = $sub['tabelName'];
                                    @endphp

                                    @if($menus[($index + 1) >= count($menus) ? count($menus) - 1 : $index + 1]['level'] != 3)
                                        @if (Route::has($routeName))
                                            <flux:navlist.item :href="route($routeName)" :current="request()->routeIs($routeName)" wire:navigate class="navlistitem">{{ $sub['CaptionFOrm'] }}</flux:navlist.item>
                                        @else
                                            <flux:navlist.item class="navlistitem">{{ $sub['CaptionFOrm'] }}</flux:navlist.item>
                                        @endif

                                    @else
                                        <flux:navlist.group heading="{!! $sub['CaptionFOrm'] !!}" expandable :expanded="false" class="mt-2" style="text-align: left">

                                            @php
                                                $subgroupmenu = $sub['GroupMenuSUb'];
                                            @endphp

                                            {{-- @foreach ($menus as $index => $subsub)

                                                @if ($subsub['level'] == 3 && $subsub['GroupMenuSUb'] == $subgroupmenu)
                                                    @php
                                                        $routeName = $subsub['tabelName'];
                                                    @endphp

                                                    @if (Route::has($routeName))
                                                        <flux:navlist.item :href="route($routeName)" :current="request()->routeIs($routeName)" wire:navigate class="navlistitem">{{ $sub['CaptionFOrm'] }}</flux:navlist.item>
                                                    @else
                                                        <flux:navlist.item class="navlistitem">{{ $sub['CaptionFOrm'] }}</flux:navlist.item>
                                                    @endif
                                                @endif
                                            @endforeach --}}

                                        </flux:navlist.group>
                                    @endif
                            
                                @endif
                            @endforeach
                
                        </flux:navlist.group>
                    @endif
                @endforeach
            </flux:navlist>

            <flux:spacer />

            {{-- <flux:navlist variant="outline"> --}}
                {{-- <flux:navlist.item icon="folder-git-2" href="https://github.com/laravel/livewire-starter-kit" target="_blank">
                {{ __('Repository') }}
                </flux:navlist.item>

                <flux:navlist.item icon="book-open-text" href="https://laravel.com/docs/starter-kits#livewire" target="_blank">
                {{ __('Documentation') }}
                </flux:navlist.item> --}}
            {{-- </flux:navlist> --}}

            <!-- Desktop User Menu -->
            <flux:dropdown class="hidden lg:block" position="bottom" align="start">
                <flux:profile
                    :name="auth()->user()->name"
                    :initials="auth()->user()->initials()"
                    icon:trailing="chevrons-up-down"
                />

                <flux:menu class="w-[220px]">
                    <flux:menu.radio.group>
                        <div class="p-0 text-sm font-normal">
                            <div class="flex items-center gap-2 px-1 py-1.5 text-start text-sm">
                                <span class="relative flex h-8 w-8 shrink-0 overflow-hidden rounded-lg">
                                    <span
                                        class="flex h-full w-full items-center justify-center rounded-lg bg-neutral-200 text-black dark:bg-neutral-700 dark:text-white"
                                    >
                                        {{ auth()->user()->initials() }}
                                    </span>
                                </span>

                                <div class="grid flex-1 text-start text-sm leading-tight">
                                    <span class="truncate font-semibold">{{ auth()->user()->name }}</span>
                                    <span class="truncate text-xs">{{ auth()->user()->email }}</span>
                                </div>
                            </div>
                        </div>
                    </flux:menu.radio.group>

                    <flux:menu.separator />

                    <flux:menu.radio.group>
                        <flux:menu.item :href="route('settings.profile')" icon="cog" wire:navigate>{{ __('Settings') }}</flux:menu.item>
                    </flux:menu.radio.group>

                    <flux:menu.separator />

                    <form method="POST" action="{{ route('logout') }}" class="w-full">
                        @csrf
                        <flux:menu.item as="button" type="submit" icon="arrow-right-start-on-rectangle" class="w-full">
                            {{ __('Log Out') }}
                        </flux:menu.item>
                    </form>
                </flux:menu>
            </flux:dropdown>
        </flux:sidebar>

        <!-- Mobile User Menu -->
        <flux:header class="lg:hidden">
            <flux:sidebar.toggle class="lg:hidden" icon="bars-2" inset="left" />

            <flux:spacer />

            <flux:dropdown position="top" align="end">
                <flux:profile
                    :initials="auth()->user()->initials()"
                    icon-trailing="chevron-down"
                />

                <flux:menu>
                    <flux:menu.radio.group>
                        <div class="p-0 text-sm font-normal">
                            <div class="flex items-center gap-2 px-1 py-1.5 text-start text-sm">
                                <span class="relative flex h-8 w-8 shrink-0 overflow-hidden rounded-lg">
                                    <span
                                        class="flex h-full w-full items-center justify-center rounded-lg bg-neutral-200 text-black dark:bg-neutral-700 dark:text-white"
                                    >
                                        {{ auth()->user()->initials() }}
                                    </span>
                                </span>

                                <div class="grid flex-1 text-start text-sm leading-tight">
                                    <span class="truncate font-semibold">{{ auth()->user()->name }}</span>
                                    <span class="truncate text-xs">{{ auth()->user()->email }}</span>
                                </div>
                            </div>
                        </div>
                    </flux:menu.radio.group>

                    <flux:menu.separator />

                    <flux:menu.radio.group>
                        <flux:menu.item :href="route('settings.profile')" icon="cog" wire:navigate>{{ __('Settings') }}</flux:menu.item>
                    </flux:menu.radio.group>

                    <flux:menu.separator />

                    <form method="POST" action="{{ route('logout') }}" class="w-full">
                        @csrf
                        <flux:menu.item as="button" type="submit" icon="arrow-right-start-on-rectangle" class="w-full">
                            {{ __('Log Out') }}
                        </flux:menu.item>
                    </form>
                </flux:menu>
            </flux:dropdown>
        </flux:header>

        {{ $slot }}

        @fluxScripts
    </body>
</html>
