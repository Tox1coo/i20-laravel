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
        $imagesProduct =  DB::table('imagesProduct')
        ->join('images', 'images.id', '=', 'imagesProduct.id')
        ->selectRaw('images.id, images.link,images.alt')
        ->where('imagesProduct.product_id', '=', $id)->get();
         return view('productPage') -> with(['product' => $product[0],'images' => $imagesProduct, 'category' => $category]);
    }
    private function getProducts($category) {
        $categoryProductsCategory = DB::table('categoryProduct')->joinSub($category, 'category', function($join) {
            $join->on('categoryProduct.category_id', '=', 'category.id');
        })
        ->join('product', 'categoryProduct.product_id', '=', 'product.id')
        ->where('product.availability', '=', 1)
        ->join('imagesProduct', 'imagesProduct.product_id', '=', 'categoryProduct.product_id')
        ->where('imagesProduct.preview', 1)
        ->join('images', 'images.id', '=', 'imagesProduct.id')
        ->selectRaw('product.*, images.link as previewPhoto, images.alt as imageDescription, categoryProduct.main');

         return $categoryProductsCategory;
    }
    private function getCurrentCategory($categoryName) {
        $categoryItem = DB::table('category')->where("category.query", '=', $categoryName);
        return $categoryItem;
    }
}