<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Category;
use App\Product;

class ProductController extends Controller
{
    public function index(Request $request){
        // Lấy danh mục cha
        $categorys = Category::with(['childrenRecursive'])->where('parent_id',0)->get();

        // Lấy id category, an toàn nếu rỗng
        $idCategory = $request->input('id');
        if(!$idCategory){
            $idCategory = $categorys->isNotEmpty() ? $categorys->first()->id : null;
        }

        // Query sản phẩm
        $products = Product::select(['products.*','categorys.name as category_name'])
            ->join('categorys','categorys.id','=','products.category_id')
            ->with('images');

        if($idCategory){
            $products = $products->where(function($query) use($idCategory){
                $query->where('categorys.id',$idCategory)
                      ->orWhere('categorys.parent_id', $idCategory);
            });
        }

        if($request->has('q')){
            $products = $products->where('products.name','like','%'.$request->input('q').'%');
        }

        $products = $products->orderBy('products.id','desc')->simplePaginate(16);

        if($request->ajax()){
            return view('Home.includes.product-content', compact('categorys', 'products'));
        }

        return view('Home.index', compact('categorys','products'));
    }

    public function detail($slug){
        $product = Product::with('images')->where('slug', $slug)->first();
        return view('Home.products.detail', compact('product'));
    }
}
