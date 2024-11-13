@php
  $id = Auth::user()->id;
  $instructorId = App\Models\User::find($id);
  $status = $instructorId->status;
@endphp


<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
<<<<<<< HEAD
    <div>
            <img src="{{ asset('upload/logo/logo.jpeg') }}" class="logo-icon" alt="logo icon" style="width: 50px; height: 50px; border-radius:50px;">
=======
        <div>
            <img src="{{ asset('backend/assets/images/logo.jpg') }}" class="logo-icon" alt="logo icon">
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        </div>
        <div>
            <h4 class="logo-text">Instructor</h4>
        </div>
        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i>
        </div>
     </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">
        <li>
            <a href="{{ route('admin.dashboard') }}">
                <div class="parent-icon"><i class='bx bx-home-alt'></i>
                </div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>

        @if($status === '1')


        <li class="menu-label">Course Manage</li>
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        <li>
            <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class='bx bx-cart'></i>
                </div>
                <div class="menu-title">Course Manage</div>
            </a>
            <ul>
                <li> <a href="{{ route('all.course') }}"><i class='bx bx-radio-circle'></i>All Course</a>
                </li>
<<<<<<< HEAD

=======
                
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
            </ul>
        </li>

        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">All Orders</div>
            </a>
            <ul>
                <li> <a href="{{ route('instructor.all.order') }}"><i class='bx bx-radio-circle'></i>All Orders</a>
                </li>
            </ul>
        </li>
<<<<<<< HEAD



=======
       

        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">All Question</div>
            </a>
            <ul>
                <li> <a href="{{ route('instructor.all.question') }}"><i class='bx bx-radio-circle'></i>All Question</a>
                </li>
            </ul>
        </li>

        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Manage Coupon</div>
            </a>
            <ul>
                <li> <a href="{{ route('instructor.all.coupon') }}"><i class='bx bx-radio-circle'></i>All Coupon</a>
                </li>
            </ul>
        </li>
<<<<<<< HEAD

=======
             
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Manage Review</div>
            </a>
            <ul>
                <li> <a href="{{ route('instructor.all.review') }}"><i class='bx bx-radio-circle'></i>All Review</a>
                </li>
            </ul>
        </li>
<<<<<<< HEAD

        <!-- <li class="menu-label">Support</li> -->


=======
       
        <li class="menu-label">Support</li>
        
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        @else

        @endif

<<<<<<< HEAD
        <!-- <li>
=======
        <li>
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
            <a href="" target="_blank">
                <div class="parent-icon"><i class="bx bx-support"></i>
                </div>
                <div class="menu-title">Support</div>
            </a>
<<<<<<< HEAD
        </li> -->
    </ul>
    <!--end navigation-->
</div>
=======
        </li>
    </ul>
    <!--end navigation-->
</div>
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
