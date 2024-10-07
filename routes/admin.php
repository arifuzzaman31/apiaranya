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
use App\Http\Controllers\PickuphubController;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\CommunityController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\ColorStoryController;
use App\Http\Controllers\SustainabilityController;

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
        Route::post('edit-category','updateCat');

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
    'media-manager' => MediaManagerController::class,
    'pickuphub' => PickuphubController::class
]);
// Route::get('get-cate-data/{id}',[CategoryController::class,'getCategoryImage'])->name('get-cate-data');
// start Attributes
Route::get('get-colour',[ColorController::class,'getColour']);
// Route::post('colour/store',[ColorController::class, 'store']);

Route::controller(PagesController::class)
    ->group(function () {
        Route::post('create-home-section','storeSection');
        Route::get('get-page-section','getPageSection');
        Route::delete('page-section/{id}','deletePageSection');
        Route::get('section-page/{id}/edit','editPageSection');
        Route::put('update-home-section','homeSectionUpdate');
        Route::get('shipping','getShipping')->name('shipping');
        Route::post('add-shipping-charge','storeShippingCharge');
        Route::get('get-shipping-data','getShippingData');
        Route::delete('remove-shipping-data/{id}','deleteShipping');
        Route::get('information','getInformation')->name('information');
        Route::post('add-information','storeInformation');
        Route::delete('remove-information-data/{id}','deleteInformation');
        Route::get('home-page','homePage')->name('home-page');
        Route::get('section-product/{sectionid}','singleSection');
        Route::patch('page-section/{sectionid}','update');
        Route::post('remove-product-section','sectionProductRemove');
        Route::view('page-create','pages.page.create_page')->name('page.create');
        Route::get('all-attr-download','exportAllAttr');
});

Route::view('refund','pages.refund.refund')->name('refund');
Route::view('approve-refund','pages.refund.refund')->name('approve-refund');
Route::view('reject-refund','pages.refund.refund')->name('reject-refund');
Route::get('refund-configure',[RefundController::class,'configure'])->name('refund-configure');
Route::post('refund/settings/update',[RefundController::class,'update']);
Route::get('refund-item-detail',[RefundController::class,'refundItemDetail']);
Route::post('order-item-refund',[RefundController::class,'orderItemRefund']);
Route::post('claim-item-refund',[RefundController::class,'itemRefundClaim']);
Route::get('full-refund-claim/{id}', [RefundController::class, 'fullOrderRefundClaim']);

// Company
Route::controller(ProductController::class)
    ->group(function () {
    Route::get('product-whats-new/{id}','whatsNewStatus');
    Route::get('get-product','getProduct');
    Route::get('get-product/search','getProductBySearch');
    Route::post('product-import','bulkUpload');
    Route::get('product-stock-download','exportProductStock');
    Route::get('product-bulk-download','exportProductDownload');
});
//Order
Route::controller(OrderController::class)
    ->group(function () {
        // Route::get('order','sendToDhl')->name('order');
        Route::get('order','index')->name('order');
        Route::get('get-order','getOrder')->name('get-order');
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
    Route::post('store-discount','storeProductSkuDiscount');
    Route::post('add-discount-to-camp','discountToCamp');
    Route::post('add-to-campaign','storeAddtoCamp');
    Route::get('campaign-product/{id}','getCampProduct');
    Route::get('product-by-campaign/{id}','getProductByCampId');
    Route::post('remove-product-camp','removeCampProduct');
});

Route::controller(DashboardController::class)
    ->group(function () {
        Route::get('customer-of-this-month', 'index');
        Route::get('get-order-info', 'getOrderInfo');
        Route::get('order-report-data', 'getOrderReport');
    });
Route::view('order-report', 'pages.report.order_report')->name('order.report');


Route::controller(ReportController::class)->group(function(){
    Route::get('pdf-report', 'makePdf')->name('pdf-report'); //for demo pdf
    Route::view('stock-report', 'pages.report.stock_report')->name('stock.report');
    Route::get('get-stock-report', 'stockReport');
    Route::view('payment-report', 'pages.report.payment_report')->name('payment.report');
    Route::get('get-payment-report', 'individualCustomerReport');
    Route::view('individual-customer', 'pages.report.individual_customer')->name('individual-customer.report');
    Route::get('get-individual-customer-report', 'individualCustomerReport');
    Route::view('customer-refund-report', 'pages.report.customer_refund_report')->name('customer-refund.report');
    Route::get('get-customer-refund-report', 'customerRefundReport');
    Route::view('invoice-report', 'pages.report.invoice_report')->name('invoice.report');
    Route::view('product-report', 'pages.report.product_report')->name('product.report');
    Route::get('get-product-report', 'productReport');
    Route::view('customer-lifetime-report', 'pages.report.customer_lifetime_report')->name('customer-lifetime.report');
    Route::get('get-customer-lifetime-report', 'customerLifetimeReport');
    Route::view('sales-report', 'pages.report.sales_report')->name('sales.report');
    Route::get('get-sales-report', 'salesReport');
    Route::view('campaign-report', 'pages.report.campaign_report')->name('campaign.report');
    Route::get('get-campaign-report', 'campaignReport');
});

Route::view('home-story','pages.story.home')->name('story.home');
Route::get('get-story-info/{type}',[StoryController::class,'getStoryData']);
Route::put('update-home-story',[StoryController::class,'updateHomeData']);
Route::view('about-aranya','pages.story.about')->name('about.aranya');
Route::get('get-about-info',[StoryController::class,'getAboutData']);
Route::post('update-about-section',[StoryController::class,'updateAboutData']);
Route::view('story-community','pages.story.community')->name('story.community');
Route::get('get-community',[CommunityController::class,'getCommunity']);
Route::put('update-community-data',[CommunityController::class,'updateCommunity']);
Route::get('community-product/{id}',[CommunityController::class,'editCommunityPage']);

Route::view('story-blog','pages.story.blog')->name('story.blog');
Route::view('story-color-story','pages.story.color_story')->name('story.color-story');
Route::get('get-color-story-data',[ColorStoryController::class,'getColorStories']);
Route::get('create-color-story',[ColorStoryController::class,'getColorStoryPage']);
Route::post('color-story',[ColorStoryController::class,'store']);
Route::get('color-story/{id}/edit',[ColorStoryController::class,'edit']);
Route::put('color-story',[ColorStoryController::class,'update']);
Route::delete('color-story/{id}',[ColorStoryController::class,'destroy']);

Route::get('get-blog-data',[BlogController::class,'getBlogs']);
Route::view('create-blog','pages.story.create_blog')->name('create-blog');
Route::post('create-blog',[BlogController::class,'store']);
Route::get('blog/{id}/edit',[BlogController::class,'edit']);
Route::put('update-blog',[BlogController::class,'update']);
Route::delete('blog/{id}',[BlogController::class,'destroy']);

Route::view('story-sustainability','pages.story.sustainability')->name('story.sustainability');
Route::get('get-sustainability-data',[SustainabilityController::class,'getSustainData']);
Route::view('create-sustainability','pages.story.create_sustainability')->name('create-sustainability');
Route::post('create-sustainability',[SustainabilityController::class,'store']);
Route::get('sustainability/{id}/edit',[SustainabilityController::class,'edit']);
Route::put('update-sustainability',[SustainabilityController::class,'update']);
// Route::get('get-certificate','pages.story.certificate')->name('get-certificate');
Route::get('get-certificate',[SustainabilityController::class,'getCertificate']);
Route::post('add-certificate',[SustainabilityController::class,'addCertificate']);
Route::delete('sustainability/{id}',[SustainabilityController::class,'destroy']);
?>
