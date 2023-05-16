<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\PageController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\FrontController;
use App\Http\Controllers\Api\OrderController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->group(function(){
    Route::get('user', function (Request $request) {
        return $request->user();
    });
    
    Route::post('logout', [AuthController::class, 'logout']); 
    //user order
    Route::post('order', [OrderController::class, 'order']);
    Route::get('order', [OrderController::class, 'orderList']);
    Route::post('order/cancel',[OrderController::class,'orderCancel']);
    Route::post('order-item-cliam-refund', [OrderController::class, 'orderItemRefundClaim']);
});

Route::get('order-details/{id}', [OrderController::class, 'orderDetails']);
Route::post('guest-order', [OrderController::class, 'order']);
Route::post('auth/register', [AuthController::class, 'createUser']);
Route::post('auth/login', [AuthController::class, 'loginUser']);

Route::get('product', [ProductController::class, 'index']);

Route::get('product/{category}/{sub_cate?}', [ProductController::class, 'getProductByCat']);

Route::get('product-by/{id}', [ProductController::class, 'getProductById']);

//object data
Route::get('home-pagedata',[PageController::class,'homeImageData']);

//Category data
Route::get('category/{id}',[CategoryController::class,'categoryData']);

Route::get('category-list',[CategoryController::class,'allCategoryList']);

// get Campain data
Route::get('all-campaign',[FrontController::class,'getCampaing']);

Route::get('category-fabric/{cat_id}',[FrontController::class,'getCategoryFabric']);


// user reset password
Route::post('user-password-email-reset-link', [AuthController::class, 'sendEmailLink'])->name('user-password-email-reset-link');

Route::post('user/reset/password', [AuthController::class, 'storeResetPassword']);




