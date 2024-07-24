<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use App\Models\Category;
use App\Http\Requests\Admin\CategoriesRequest;

class Categories extends Controller
{

    public function __construct()
    {

        $this->middleware('AdminRole:categories_show', [
            'only' => ['index', 'show'],
        ]);
        $this->middleware('AdminRole:categories_add', [
            'only' => ['create', 'store'],
        ]);
        $this->middleware('AdminRole:categories_edit', [
            'only' => ['edit', 'update'],
        ]);
        $this->middleware('AdminRole:categories_delete', [
            'only' => ['destroy', 'multi_delete'],
        ]);
    }



    /**
     *
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::paginate();
        return view('admin.categories.index', ['title' => trans('admin.categories'), 'categories' => $categories]);
    }

    /**
     *
     * Show the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::get();
        return view('admin.categories.create', ['title' => trans('admin.create'), 'categories' => $categories]);
    }

    /**
     *
     * Store a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response Or Redirect
     */
    public function store(CategoriesRequest $request)
    {
        $data = $request->except("_token", "_method");
        $categories = Category::create($data);
        $redirect = isset($request["add_back"]) ? "/create" : "";
        return redirectWithSuccess(url(request()->segment('1') . '/categories' . $redirect), trans('admin.added'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $categories =  Category::find($id);
        return is_null($categories) || empty($categories) ?
            backWithError(trans("admin.undefinedRecord"), aurl("categories")) :
            view('admin.categories.show', [
                'title' => 'show category',
                'categories' => $categories
            ]);
    }

    /**
     *
     * edit the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories =  Category::find($id);
        return is_null($categories) || empty($categories) ?
            backWithError(trans("admin.undefinedRecord"), aurl("categories")) :
            view('admin.categories.edit', [
                'title' => trans('admin.edit'),
                'categories' => $categories,
            ]);
    }


    /**
     *
     * update a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateFillableColumns()
    {
        $fillableCols = [];
        foreach (array_keys((new CategoriesRequest)->attributes()) as $fillableUpdate) {
            if (!is_null(request($fillableUpdate))) {
                $fillableCols[$fillableUpdate] = request($fillableUpdate);
            }
        }
        return $fillableCols;
    }

    public function update(CategoriesRequest $request, $id)
    {
        // Check Record Exists
        $categories =  Category::find($id);
        if (is_null($categories) || empty($categories)) {
            return backWithError(trans("admin.undefinedRecord"), aurl("categories"));
        }
        $data = $this->updateFillableColumns();
        Category::where('id', $id)->update($data);
        $redirect = isset($request["save_back"]) ? "/" . $id . "/edit" : "";
        return redirectWithSuccess(url(request()->segment('1') . '/categories' . $redirect), trans('admin.updated'));
    }

    /**
     *
     * destroy a newly created resource in storage.
     * @param  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categories = Category::find($id);
        if (is_null($categories) || empty($categories)) {
            return backWithSuccess(trans('admin.undefinedRecord'), aurl("categories"));
        }
        $prods = \App\Models\Product::where('category_id', $id)->get()->count();
        if($prods>0) {
			return backWithError('عذرا, هذا القسم يحتوي أقسام فرعية أو منتجات لا يمكن حذفه', aurl("categories"));
        }
        it()->delete('category', $id);
        $categories->delete();
        return redirectWithSuccess(aurl("categories"), trans('admin.deleted'));
    }

}
