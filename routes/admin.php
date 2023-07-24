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
use App\Http\Controllers\MediaManagerController;
use App\Http\Controllers\ReportController;

Route::redirect('/', 'admin/dashboard');
Route::get('/me', [AdminLoginController::class, 'getUser']);
Route::get('/dashboard', [AdminLoginController::class, 'index']);
Route::get('logout', [AdminLoginController::class, 'logout'])->name('logout');
Route::view('change-password', 'admin.change_password')->name('change-password');
Route::post('change-password', [AdminLoginController::class, 'changePassword']);

// Role Permission
Route::get('get-role',[RoleController::class,'getRole']);
Route::get('get-permission-data',[RoleController::class,'getPermissionData']);

//Category Route
// Route::resource('category',CategoryController::class);
Route::controller(CategoryController::class)
    ->group(function () {
        Route::get('get-category','getCategoryData');
        Route::get('category-subcategory-data','getCategoryByCat');
        Route::get('add-category','getCategory')->name('add-category');
        Route::get('edit-category','editCategory')->name('edit-category');
        Route::get('update-category-image/{id}','updateCategoryImage')->name('update-category-image');
        Route::post('fabric-add-category','updateCompCat');

});

Route::resources([
    'role' => RoleController::class,
    'employee' => EmployeeController::class,
    'category' => CategoryController::class,
    'colour' => ColorController::class,
    'sizes' => SizeController::class,
    'fabrics' => FabricController::class,
    'vendors' => VendorController::class,
    'brands' => BrandController::class,
    'designers' => DesignerController::class,
    'artist' => ArtistController::class,
    'embellishment' => EmbellishmentController::class,
    'making' => MakingController::class,
    'season' => SeasonController::class,
    'varieties' => VarietyController::class,
    'fit' => FitController::class,
    'ingredient' => IngredientsController::class,
    'care' => CareController::class,
    'country' => CountryController::class,
    'vat-tax' => CompanyController::class,
    'product' => ProductController::class,
    'campaign' => CampaignController::class,
    'consignment' => ConsignmentController::class,
    'media-manager' => MediaManagerController::class
]);
// Route::get('get-cate-data/{id}',[CategoryController::class,'getCategoryImage'])->name('get-cate-data');
// start Attributes
Route::get('get-colour',[ColorController::class,'getColour']);
// Route::post('colour/store',[ColorController::class, 'store']);

Route::controller(PagesController::class)
    ->group(function () {
        Route::get('shipping','getShipping')->name('shipping');
        Route::post('add-shipping-charge','storeShippingCharge');
        Route::get('get-shipping-data','getShippingData');
        Route::delete('remove-shipping-data/{id}','deleteShipping');
        Route::get('information','getInformation')->name('information');
        Route::post('add-information','storeInformation');
        Route::delete('remove-information-data/{id}','deleteInformation');
});

Route::view('refund','pages.refund.refund')->name('refund');
Route::view('approve-refund','pages.refund.refund')->name('approve-refund');
Route::view('reject-refund','pages.refund.refund')->name('reject-refund');
Route::get('refund-configure',[RefundController::class,'configure'])->name('refund-configure');
Route::post('refund/settings/update',[RefundController::class,'update']);
Route::get('refund-item-detail',[RefundController::class,'refundItemDetail']);
Route::post('order-item-refund',[RefundController::class,'orderItemRefund']);

// Company

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
Route::controller(CustomerController::class)
    ->group(function () {
        Route::get('customers','index')->name('customers');
        Route::get('get-customer','getCustomer');
        Route::get('get-user/{id}/orders','getCustomerOrder');
        Route::get('user-order-detail/{order_id}','getCustomerOrderDetail')->name('user-order-detail/{id}');
    });

//Campaign

Route::controller(CampaignController::class)
    ->group(function () {
    Route::get('get-campaign','getCampaing');
    Route::post('add-to-campaign','storeAddtoCamp');
    Route::get('campaign-product/{id}','getCampProduct');
    Route::post('remove-product-camp','removeCampProduct');
});
//Pages
Route::controller(PagesController::class)
    ->group(function () {
    Route::get('home-page','homePage')->name('home-page');
    Route::post('update-home-image','homeImageUpdate');
    Route::get('get-home-pagedata','homeImageData'); 
    Route::get('all-attr-download','exportAllAttr');
});

Route::controller(DashboardController::class)
    ->group(function () {
        Route::get('customer-of-this-month', 'index');
        Route::get('get-order-info', 'getOrderInfo');
        Route::get('order-report-data', 'getOrderReport');
    });
Route::view('order-report', 'pages.report.order_report')->name('order.report');
Route::controller(ReportController::class)->group(function(){
    Route::view('stock-report', 'pages.report.stock_report')->name('stock.report');
    Route::get('get-stock-report', 'stockReport');
    Route::view('payment-report', 'pages.report.payment_report')->name('payment.report');
    Route::get('get-payment-report', 'paymentReport');
});

?>