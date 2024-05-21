<?php
namespace App\Services;
use Illuminate\Support\Facades\Http;

class MailchimpService
{
    protected $apiKey;
    protected $serverPrefix;
    protected $storeId;

    public function __construct()
    {
        $this->apiKey = config('newsletter.apiKey');
        $this->serverPrefix = substr($this->apiKey, strpos($this->apiKey, '-') + 1);
        $this->storeId = config('newsletter.store_id');
    }

    // public function createProduct(array $productData)
    // {
    //     // Construct the URL for the Mailchimp API endpoint
    //     $url = "https://{$this->serverPrefix}.api.mailchimp.com/3.0/ecommerce/stores/{$this->storeId}/products";
    //     // Make the API request to create the product
    //     $response = Http::withBasicAuth('anystring', $this->apiKey)
    //         ->post($url, $productData);
    //     // Return the response as an array
    //     return $response->json();
    // }
    public function createProduct(array $productData)
    {
        $url = "https://{$this->serverPrefix}.api.mailchimp.com/3.0/ecommerce/stores/{$this->storeId}/products";
        $response = Http::withBasicAuth('anystring', $this->apiKey)
            ->post($url, $productData);
        return $response->json();
    }

    public function createProducts($productsData)
    {
        $responses = [];
        foreach ($productsData as $productData) {
            $link = config('app.front_url').'products/'.($productData->subcategory->slug ?? $productData->category->slug).'/'.$productData->id;
            $data = [
                    'id' => $productData->id.uniqueString(),
                    'title' => $productData->product_name,
                    'description' => strip_tags($productData->description),
                    'vendor' => 'Aranya',
                    'image_url' => $productData->product_image,
                    'variants' => [
                        [
                            'id' => $productData->inventory[0]->id.uniqueString(),
                            'title' => $productData->product_name,
                            'price' => (int)$productData->inventory[0]->mrp,
                            'inventory_quantity' => $productData->inventory[0]->stock,
                            "url" => $link,
                            'sku' => $productData->inventory[0]->sku,
                            "image_url" => $productData->product_image
                        ],
                    ],
                    'url' => $link,
                    'type' =>  $productData->category->category_name,
                    'published_at_foreign' =>  date('Y-m-d H:i:s'),
            ];
            // $responses[] = $data;
            $responses[] = $this->createProduct($data);
        }
        return $responses;
    }
}
