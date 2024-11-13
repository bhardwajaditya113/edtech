<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Course;
use App\Models\Payment;
use App\Models\Coupon;
use App\Models\Question;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class InstructorController extends Controller
{
    public function InstructorDashboard()
    {
        $data["course"] = Course::where('instructor_id', auth()->id())->count();
        $data["orders"] = Payment::join('orders', 'orders.payment_id', '=', 'payments.id')
            ->where('instructor_id', auth()->id())
            ->select('payments.id')
            ->distinct()
            ->where('status', 'confirm')->get();

        $data["orders"] = count($data["orders"]);

        $data["questions"] = Question::where('instructor_id', auth()->id())->count();
        $data["coupons"] = Coupon::where('instructor_id', auth()->id())->count();

        $data["total_business"] = Payment::join('orders', 'orders.payment_id', '=', 'payments.id')
            ->where('instructor_id', auth()->id())
            ->select('payments.id', 'payments.total_amount')
            ->distinct()
            ->where('status', 'confirm')
            ->whereYear('payments.created_at', Carbon::now()->year)
            ->sum('total_amount');

        $data["total_course"] = Course::where('instructor_id', auth()->id())
            ->whereYear('created_at', Carbon::now()->year)
            ->count();

        $data["total_orders"] = Payment::join('orders', 'orders.payment_id', '=', 'payments.id')
            ->where('instructor_id', auth()->id())
            ->whereYear('payments.created_at', Carbon::now()->year)
            ->select('payments.id')
            ->distinct()
            ->where('status', 'confirm')->get();

        $data["total_orders"] = count($data["total_orders"]);

        $data['recent_orders'] =  Payment::join('orders', 'orders.payment_id', '=', 'payments.id')
            ->where('instructor_id', auth()->id())
            ->select('payments.*')
            ->distinct()
            ->where('status', 'pending')
            ->take(10)->get();

        // dd($data['recent_orders']);
        return view('instructor.index')->with($data);
    } // End Method

    public function InstructorLogout(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();


        $notification = array(
            'message' => 'Logout Successfully',
            'alert-type' => 'info'
        );

        return redirect('/instructor/login')->with($notification);
    }

    public function InstructorLogin()
    {
        return view('instructor.instructor_login');
    }

    public function InstructorProfile()
    {
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('instructor.instructor_profile_view', compact('profileData'));
    } //End Method

    public function InstructorProfileStore(Request $request)
    {

        $id = Auth::user()->id;
        $data = User::find($id);
        $data->name = $request->name;
        $data->username = $request->username;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->address = $request->address;

        if ($request->file('photo')) {
            $file = $request->file('photo');
            @unlink(public_path('upload/instructor_images/' . $data->photo));
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/instructor_images'), $filename);
            $data['photo'] = $filename;
        }

        $data->save();

        $notification = array(
            'message' => 'Instructor Profile Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function InstructorChangePassword()
    {
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('instructor.instructor_change_password', compact('profileData'));
    }

    public function InstructorPasswordUpdate(Request $request)
    {

        //Validation
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|confirmed',
        ]);

        if (!Hash::check($request->old_password, auth::user()->password)) {

            $notification = array(
                'message' => 'Old Password does not match',
                'alert-type' => 'error'
            );

            return back()->with($notification);
        }

        //Update the new password
        User::whereId(auth::user()->id)->update([
            'password' => Hash::make($request->new_password)
        ]);

        $notification = array(
            'message' => 'Password Change Successfully',
            'alert-type' => 'success'
        );

        return back()->with($notification);
    } //End Method

}
