<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Requests\Admin\ProductsRequest;

class Products extends Controller
{
    public function __construct()
    {

        $this->middleware('AdminRole:products_show', [
            'only' => ['index', 'show'],
        ]);
        $this->middleware('AdminRole:products_add', [
            'only' => ['create', 'store'],
        ]);
        $this->middleware('AdminRole:products_edit', [
            'only' => ['edit', 'update'],
        ]);
        $this->middleware('AdminRole:products_delete', [
            'only' => ['destroy', 'multi_delete'],
        ]);
    }



    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $name = request()->name;
        $category_id = request()->category_id;
        $categories = Category::get();
            $products = Product::query()
            ->when($name, function($query) use ($name) {
                $query->where('name_ar', 'LIKE', '%'.$name.'%');
                $query->orWhere('name_en', 'LIKE', '%'.$name.'%');
            })
            ->when($category_id, function($query) use ($category_id) {
                $query->where('category_id', $category_id);
            })
            ->paginate()->withQueryString();
        return view('admin.products.index', ['title' => trans('admin.products'), 'products' => $products, 'categories' => $categories]);
    }


    /**
     * Show the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.products.create', ['title' => trans('admin.create')]);
    }

    /**
     * Store a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response Or Redirect
     */
    public function store(ProductsRequest $request)
    {
        $data = $request->except("_token", "_method");
        $data['image'] = "";

        $products = Product::create($data);
        if (request()->hasFile('image')) {
            $products->image = it()->upload('image', 'products/' . $products->id);
            $products->save();
        }
        $redirect = isset($request["add_back"]) ? "/create" : "";
        return redirectWithSuccess(url(request()->segment('1') . '/products' . $redirect), trans('admin.added'));
    }

    /**
     * Display the specified resource.
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $products =  Product::find($id);
        return is_null($products) || empty($products) ?
            backWithError(trans("admin.undefinedRecord"), url(request()->segment(1)."/products")) :
            view('admin.products.show', [
                'title' => trans('admin.show'),
                'products' => $products
            ]);
    }


    /**
     * edit the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $products =  Product::find($id);

        return is_null($products) || empty($products) ?
            backWithError(trans("admin.undefinedRecord"), url(request()->segment(1)."/products")) :
            view('admin.products.edit', [
                'title' => trans('admin.edit'),
                'products' => $products,
            ]);
    }


    /**
     * update a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateFillableColumns()
    {
        $fillableCols = [];
        foreach (array_keys((new ProductsRequest)->attributes()) as $fillableUpdate) {
            if (!is_null(request($fillableUpdate))) {
                $fillableCols[$fillableUpdate] = request($fillableUpdate);
            }
        }
        return $fillableCols;
    }

    public function update(ProductsRequest $request, $id)
    {
        // Check Record Exists
        $product =  Product::find($id);
        if (is_null($product) || empty($product)) {
            return backWithError(trans("admin.undefinedRecord"), url(request()->segment(1)."/products"));
        }
        $data = $this->updateFillableColumns();
        if (request()->hasFile('image')) {
            it()->delete($product->image);
            $data['image'] = it()->upload('image', 'products');
        }
        Product::where('id', $id)->update($data);
        $redirect = isset($request["save_back"]) ? "/" . $id . "/edit" : "";
        return redirectWithSuccess(url(request()->segment('1') . '/products' . $redirect), trans('admin.updated'));
    }

    /**
     * destroy a newly created resource in storage.
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if (is_null($product) || empty($product)) {
            return backWithSuccess(trans('admin.undefinedRecord'), url(request()->segment(1)."/products"));
        }

        it()->delete('product', $id);
        $product->delete();
        return redirectWithSuccess(url(request()->segment(1)."/products"), trans('admin.deleted'));
    }
}
