<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\AttributesController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\FabricController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CustomerController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/', 'login');

Route::get('login', function () {
    // return \Hash::make(123);
    return view('admin.login');
});

Route::post('login', [AdminLoginController::class, 'login'])->name('login');
Route::view('forgot-password', 'admin.forgot_password')->name('forgot-password');
Route::post('send-reset-mail', [AdminLoginController::class, 'resetMail'])->name('send-reset-mail');
Route::get('enter-password', [AdminLoginController::class,'enterPassword'])->name('reset.password.enter');
Route::post('enter-password', [AdminLoginController::class,'store'])->name('reset.password.enter');

Route::group(['middleware' => ['admin'],'prefix' => 'admin'], function () {
    Route::redirect('/', 'admin/dashboard');
    Route::get('/me', [AdminLoginController::class, 'getUser']);
    Route::view('/dashboard', 'pages.dashboard');
    Route::get('logout', [AdminLoginController::class, 'logout'])->name('logout');
    Route::view('change-password', 'admin.change_password')->name('change-password');
    Route::post('change-password', [AdminLoginController::class, 'changePassword']);

    //Category Route
    Route::resource('category',CategoryController::class);
    Route::get('add-category',[CategoryController::class,'getCategory'])->name('add-category');

    Route::resource('colour',ColorController::class);
    Route::get('get-colour',[ColorController::class,'getColour']);
    // Route::post('colour/store',[ColorController::class, 'store']);
    Route::resource('sizes',SizeController::class);
    Route::resource('fabrics',FabricController::class);
    
    Route::resource('attribute',AttributesController::class);
    Route::get('get-attribute-data',[AttributesController::class, 'getAttrData']);
    Route::post('attribute-update/{id}',[AttributesController::class, 'update'])->name('attribute-update');
    Route::delete('attribute/destroy/{id}',[AttributesController::class, 'destroy'])->name('attribute-destroy');
    
    
    Route::resource('product',ProductController::class);
    Route::get('get-product',[ProductController::class,'getProduct']);
    
    //Order
    Route::get('order',[OrderController::class,'index'])->name('order');
    Route::get('get-order',[OrderController::class,'getOrder'])->name('get-order');
    Route::post('update/order/status/{id}',[OrderController::class,'updateOrder'])->name('update/order/status');
    
    //customer
    Route::get('customers',[CustomerController::class,'index'])->name('customers');
    Route::get('get-customer',[CustomerController::class,'getCustomer']);


});