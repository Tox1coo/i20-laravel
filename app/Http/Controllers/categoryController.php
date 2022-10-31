<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class categoryController extends Controller
{

    public function categoryPage($category) {
        $limit = 12;
        $categoryItem = $this->getCurrentCategory($category);
        $categoryProductList = $this->getProducts($categoryItem)->paginate($limit);
         return view('categoryPage') -> with(['category' => $categoryItem->get()[0],'products' => $categoryProductList, 'countProducts'=> $categoryProductList, 'limit'=>$limit]);
    }

    public function categoryProductPage($category, $id) {
        $product = DB::table('product')->where('product.id', '=', $id)->get();
        $imagesProduct =  DB::table('imagesproduct')
        ->join('images', 'images.id', '=', 'imagesproduct.id')
        ->selectRaw('images.id, images.link,images.alt')
        ->where('imagesproduct.product_id', '=', $id)->get();
         return view('productPage') -> with(['product' => $product[0],'images' => $imagesProduct, 'category' => $category]);
    }
    private function getProducts($category) {
        $categoryProductsCategory = DB::table('categoryProduct')->joinSub($category, 'category', function($join) {
            $join->on('categoryproduct.category_id', '=', 'category.id');
        })
        ->join('product', 'categoryproduct.product_id', '=', 'product.id')
        ->where('product.availability', '=', 1)
        ->join('imagesproduct', 'imagesproduct.product_id', '=', 'categoryproduct.product_id')
        ->where('imagesproduct.preview', 1)
        ->join('images', 'images.id', '=', 'imagesproduct.id')
        ->selectRaw('product.*, images.link as previewPhoto, images.alt as imageDescription, categoryproduct.main');

         return $categoryProductsCategory;
    }
    private function getCurrentCategory($categoryName) {
        $categoryItem = DB::table('category')->where("category.query", '=', $categoryName);
        return $categoryItem;
    }
}