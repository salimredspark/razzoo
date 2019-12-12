<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use App\LoanApplication;
use Socialite;
use Exception;
use Auth;
use Session;

class FacebookController extends Controller
{
    public function redirectToFacebook()
    {

        return Socialite::driver('facebook')->redirect();
    }

    public function handleFacebookCallback()
    {
        try {
            $user = Socialite::driver('facebook')->user();

            $create['name'] = $user->getName();
            $create['email'] = $user->getEmail();
            $create['facebook_id'] = $user->getId();

            /*
            $userModel = new User;
            $createdUser = $userModel->addNew($create);
            Auth::loginUsingId($createdUser->id);
            */
            
            $saveExistAppData = LoanApplication::where([['customer_email', '=', $create['email']]])->first();
            if ($saveExistAppData) {
                $applicationId = $saveExistAppData->id;
                $saveExistAppData->customer_firstname =  $create['name'];
                $saveExistAppData->customer_lastname =  $create['name'];
                $saveExistAppData->customer_email =  $create['email'];
                $saveExistAppData->customer_mobile =  $create['customer_mobile'];
                $saveExistAppData->facebook_id =  $create['facebook_id'];
                $saveExistAppData->ip_address = LoanApplication::getClientIPAddress();
                $saveExistAppData->loan_status = 'Pending';

                $saveExistAppData->updated_at =  strtotime(date('Y-m-d h:i:s'));
                $saveExistAppData->save();
            } else {
                $saveApplication = new LoanApplication();
                $saveExistAppData->customer_firstname =  $create['name'];
                $saveExistAppData->customer_lastname =  $create['name'];
                $saveExistAppData->customer_email =  $create['email'];
                $saveExistAppData->customer_mobile =  $create['customer_mobile'];
                $saveExistAppData->facebook_id =  $create['facebook_id'];
                $saveExistAppData->ip_address = LoanApplication::getClientIPAddress();
                $saveExistAppData->loan_status = 'Pending';

                $saveApplication->created_at =  strtotime(date('Y-m-d h:i:s'));
                $saveApplication->updated_at =  strtotime(date('Y-m-d h:i:s'));
                $saveApplication->save();

                $applicationId = $saveApplication->id;
            }
            Session::put('fb_loan_application_id', $applicationId);

            //return redirect()->route('loan-process');
            return redirect()->route('loan-process')->with('success', 'Facebook login sucess');
        } catch (Exception $e) {          
            return redirect('loan-process')->with('error', $e->getMessage());
        }
    }
}
