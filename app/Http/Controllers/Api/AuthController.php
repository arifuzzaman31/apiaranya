<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    /**
     * Create User
     * @param Request $request
     * @return User 
     */
    public function createUser(Request $request)
    {
        try {
            //Validated
            $validateUser = Validator::make(
                $request->all(),
                [
                    'name' => 'required',
                    'email' => 'required|email|unique:users,email',
                    'password' => 'required'
                ]
            );

            if ($validateUser->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password)
            ]);

            return response()->json([
                'status' => true,
                'message' => 'User Created Successfully',
                'user'  => $user,
                'token' => $user->createToken("API TOKEN")->plainTextToken
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    /**
     * Login The User
     * @param Request $request
     * @return User
     */
    public function loginUser(Request $request)
    {
        try {
            $validateUser = Validator::make(
                $request->all(),
                [
                    'email' => 'required|email',
                    'password' => 'required'
                ]
            );
            // return response()->json($request->all());
            if ($validateUser->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }

            if (!Auth::attempt($request->only(['email', 'password']))) {
                return response()->json([
                    'status' => false,
                    'message' => 'Invalid Email or Password.',
                ], 401);
            }

            $user = User::where('email', $request->email)->first();

            return response()->json([
                'status' => true,
                'message' => 'User Logged In Successfully',
                'user'  => $user,
                'token' => $user->createToken($user->email)->plainTextToken
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function logout(Request $request)
    {
        try {
            $request->user()->currentAccessToken()->delete();
            return response()->json([
                'status' => true,
                'message' => 'User Logout Successfully'
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function storeNewPassword(Request $request)
    {
        $request->validate([
            'oldpassword' => 'required',
            'password'    => 'required|confirmed|min:6',
        ]);

        $hasPassword = Auth::user()->password;

        if (Hash::check($request->oldpassword, $hasPassword)) {
            $user           = User::find(Auth::id());
            $user->password = Hash::make($request->password);
            $user->update();
            return response()->json(['status' => 'success','massage' => 'Password Updated']);
        } else {
            return $this->errorMessage();
        }
    }

    public function sendEmailLink(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
        ]);

        try {
            DB::beginTransaction();
            $token                  = \Hash::make(uniqueString());
    
            $details = [
                'token' => $token,
                'email' => $request->email
            ];
    
            \DB::table('password_resets')->insert($details);
            \Mail::to($request->email)->send(new \App\Mail\ResetPasswordMail($details));
            DB::commit();
            return response()->json(['status' => 'success','massage' => 'Token send to Email','reset_token' => $token]);
            
        } catch (\Throwable $th) {
            DB::rollBack();
            //  return $th;
             return $this->errorMessage();
        }
    }

    public function storeResetPassword(Request $request)
    {
        $request->validate([
            'password' => 'required|confirmed|min:6',
        ]);
        try {
            DB::beginTransaction();
            $userToken = \DB::table('password_resets')->where('token', $request->token)->first();
    
            if (!$userToken) {
                return response()->json(['status' => 'error','massage' => 'Invalid Token']);
            }
    
            $user           = User::where('email',$userToken->email)->first();
            $user->password = Hash::make($request->password);
            $user->update();
    
            \DB::table('password_resets')->where('token', $request->token)->delete();
    
            DB::commit();
            $this->successMessage('Password Changed Successfully!');
            //code...
        } catch (\Throwable $th) {
            DB::rollBack();
            // return $th;
            return $this->errorMessage();
        }
    }
}
