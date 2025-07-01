<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\MasteFormSqlModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        View::composer('components.layouts.app.sidebar', function ($view) {
            $view->with('menus', MasteFormSqlModel::select(DB::raw("sortid, level, TRIM(': ' FROM CaptionFOrm) AS CaptionFOrm, GroupMenuSUb, tabelName"))->orderBy('sortid')->get());
        });
    }
}
