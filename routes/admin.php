<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\VendorController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\FabricController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CampaignController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\ArtistController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\EmbellishmentController;
use App\Http\Controllers\DesignerController;
use App\Http\Controllers\MakingController;
use App\Http\Controllers\FitController;
use App\Http\Controllers\IngredientsController;
use App\Http\Controllers\ConsignmentController;
use App\Http\Controllers\SeasonController;
use App\Http\Controllers\VarietyController;
use App\Http\Controllers\CareController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\RefundController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\DashboardController;

Route::redirect('/', 'admin/dashboard');
Route::get('/me', [AdminLoginController::class, 'getUser']);
Route::get('/dashboard', [AdminLoginController::class, 'index']);
Route::get('logout', [AdminLoginController::class, 'logout'])->name('logout');
Route::view('change-password', 'admin.change_password')->name('change-password');
Route::post('change-password', [AdminLoginController::class, 'changePassword']);

// Role Permission
Route::resource('role',RoleController::class);
Route::get('get-role',[RoleController::class,'getRole']);
Route::get('get-permission-data',[RoleController::class,'getPermissionData']);
Route::resource('employee',EmployeeController::class);

//Category Route
Route::resource('category',CategoryController::class);
Route::get('get-category',[CategoryController::class,'getCategoryData']);
Route::get('category-subcategory-data',[CategoryController::class,'getCategoryByCat']);
Route::get('add-category',[CategoryController::class,'getCategory'])->name('add-category');
Route::get('edit-category',[CategoryController::class,'editCategory'])->name('edit-category');
Route::get('update-category-image/{id}',[CategoryController::class,'updateCategoryImage'])->name('update-category-image');
// Route::get('get-cate-data/{id}',[CategoryController::class,'getCategoryImage'])->name('get-cate-data');
// start Attributes
Route::resource('colour',ColorController::class);
Route::get('get-colour',[ColorController::class,'getColour']);
// Route::post('colour/store',[ColorController::class, 'store']);
Route::resource('sizes',SizeController::class);
Route::resource('fabrics',FabricController::class);

Route::resource('vendors',VendorController::class);
Route::resource('brands',BrandController::class);
Route::resource('designers',DesignerController::class);
Route::resource('artist',ArtistController::class);
Route::resource('embellishment',EmbellishmentController::class);
Route::resource('making',MakingController::class);
Route::resource('season',SeasonController::class);
Route::resource('varieties',VarietyController::class);
Route::resource('fit',FitController::class);
Route::resource('consignment',ConsignmentController::class);
Route::resource('ingredient',IngredientsController::class);
Route::resource('care',CareController::class);
Route::resource('country',CountryController::class);
Route::view('refund','pages.refund.refund')->name('refund');
Route::view('approve-refund','pages.refund.refund')->name('approve-refund');
Route::view('reject-refund','pages.refund.refund')->name('reject-refund');
Route::get('refund-configure',[RefundController::class,'configure'])->name('refund-configure');
Route::post('refund/settings/update',[RefundController::class,'update']);
Route::get('refund-item-detail',[RefundController::class,'refundItemDetail']);
Route::post('order-item-refund',[RefundController::class,'orderItemRefund']);

// Company
Route::resource('vat-tax',CompanyController::class);


Route::resource('product',ProductController::class);
Route::get('get-product',[ProductController::class,'getProduct']);
Route::get('get-product/search',[ProductController::class,'getProductBySearch']);
Route::post('product-import',[ProductController::class,'bulkUpload']);
Route::get('product-stock-download',[ProductController::class,'exportProductStock']); 

//Order
Route::controller(OrderController::class)
    ->group(function () {
        Route::get('order','index')->name('order');
        Route::get('get-order','getOrder')->name('get-order');
        Route::get('get-order-excel','getOrderExcel')->name('get-order-excel');
        Route::post('update/order/status/{id?}','updateOrderStatus');
        // Route::get('orders-details/{id}','orderDetails');
        Route::post('order/cancel','orderCancel');
        Route::post('update-payment-status/{id}','orderPaymentStatus');
        Route::get('get-user-order/{id}','getUserOrder');
        Route::delete('order/{id}','destroy');
        Route::get('order-shipment/{id}','orderShipment');
        Route::get('order-details/{order_id}','orderDetails');
    });

//customer
Route::controller(OrderController::class)
    ->group(function () {
        Route::get('customers','index')->name('customers');
        Route::get('get-customer','getCustomer');
        Route::get('get-user/{id}/orders','getCustomerOrder');
        Route::get('user-order-detail/{order_id}','getCustomerOrderDetail')->name('user-order-detail/{id}');
    });

//Campaign
Route::resource('campaign',CampaignController::class);
Route::controller(OrderController::class)
    ->group(function () {
    Route::get('get-campaign','getCampaing');
    Route::post('add-to-campaign','storeAddtoCamp');
    Route::get('campaign-product/{id}','getCampProduct');
    Route::post('remove-product-camp','removeCampProduct');
});
//Pages
Route::get('home-page',[PagesController::class,'homePage'])->name('home-page');
Route::post('update-home-image',[PagesController::class,'homeImageUpdate']);
Route::get('get-home-pagedata',[PagesController::class,'homeImageData']); 
Route::get('all-attr-download',[PagesController::class,'exportAllAttr']);

Route::controller(DashboardController::class)
    ->group(function () {
        Route::get('customer-of-this-month', 'index');
        Route::get('get-order-info', 'getOrderInfo');
        Route::get('order-report', 'getOrderReport')->name('order-report');
    });

?>