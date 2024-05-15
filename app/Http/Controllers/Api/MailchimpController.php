<?php

namespace App\Http\Controllers\Api;
use Spatie\Newsletter\NewsletterFacade as Newsletter;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MailchimpController extends Controller
{
    public function subscribe(Request $request)
   {
       $email = $request->input('email');
       if(!Newsletter::isSubscribed($email)){
           Newsletter::subscribe($email);
       }
       return response()->json(['status' => true, 'message'=>'Subscription  Done !']);
   }
}
