<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
         $listCategory = DB::table('category')
        ->Join('categoryproduct', 'category.id', '=', 'categoryproduct.category_id')
        ->select('category.id','category.query', 'category.title');


        $allListCategory = $listCategory->Join('product', 'product.id', '=', 'categoryproduct.product_id')
        ->addSelect(DB::raw('COUNT(product.id) as countProducts') )
        ->groupByRaw(DB::raw('id'))
        ->orderByDesc('countProducts')
        ->whereNull('product.availability')
        ->orWhere('product.availability', '=', 1)
        ->having('countProducts', '>=', 0)
        ->get();


         view()->share('categories', $allListCategory);
        $allCategory =DB::table('category')->get();
         view()->share('allCategories', $allCategory);

    }
}