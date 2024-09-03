<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SmtpSetting;
use Intervention\Image\Facades\Image;
use App\Models\SiteSetting;

class SettingController extends Controller
{
    public function SmtpSetting(){

        $smtp = SmtpSetting::find(1);
        return view('admin.backend.setting.smtp_update', compact('smtp'));

    }

    public function SmtpUpdate(Request $request){

        $smtp_id = $request->id;

        SmtpSetting::find($smtp_id)->update([
            'mailer' => $request->mailer,
            'host' => $request->host,
            'port' => $request->port,
            'username' => $request->username,
            'password' => $request->password,
            'encryption' => $request->encryption,
            'from_address' => $request->from_address,
        ]);


        $notification = array(
            'message' => 'Smtp Setting Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
   
    public function SiteSetting(){

        $site = SiteSetting::find(1);
        return view('admin.backend.site.site_update', compact('site'));

    }

    public function UpdateSite(Request $request){
        
        $site_id = $request->id;
        
        if($request->file('logo')){
        
            $image = $request->file('logo');
            $save_url = "Course/Logo".time() . '_' . $image->getClientOriginalName();
            uploadFile($save_url, $image);
            //$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            //Image::make($image)->resize(140,41)->save('upload/logo/'.$name_gen);
            //$save_url = 'upload/logo/'.$name_gen;

            SiteSetting::find($site_id)->update([
            'phone' => $request->phone,
            'email' => $request->email,
            'address' => $request->address,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'instagram' => $request->instagram,
            'linkedin' => $request->linkedin,
            'copyright' => $request->copyright,
            'logo' => $save_url,
        ]);

        $notification = array(
            'message' => 'Site Setting Updated with image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
        }else{
            
            SiteSetting::find($site_id)->update([
                'phone' => $request->phone,
                'email' => $request->email,
                'address' => $request->address,
                'facebook' => $request->facebook,
                'twitter' => $request->twitter,
                'instagram' => $request->instagram,
                'linkedin' => $request->linkedin,
                'copyright' => $request->copyright,
            ]);
    
            $notification = array(
                'message' => 'Site Setting Updated without image Successfully',
                'alert-type' => 'success'
            );
    
            return redirect()->back()->with($notification);
        }
    }

}

