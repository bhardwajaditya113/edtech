<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\Course;
use App\Models\Course_goal;
use App\Models\CourseSection;
use App\Models\CourseLecture;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class CourseController extends Controller
{
    public function AllCourse(){

        $id = Auth::user()->id;
        $courses = Course::where('instructor_id', $id)->orderBy('id', 'desc')->get();
        return view('instructor.courses.all_course', compact('courses'));

    }

    public function AddCourse(){

        $categories = Category::latest()->get();
            return view('instructor.courses.add_course', compact('categories'));
    }

    public function GetSubCategory($category_id){

        $subcat = SubCategory::where('category_id', $category_id)->orderBy('subcategory_name', 'ASC')->get();
<<<<<<< HEAD
        return json_encode($subcat);
=======
        return json_encode($subcat);        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
    }

    public function StoreCourse(Request $request){

        $request->validate([
<<<<<<< HEAD
            'video' => 'required|mimes:mp4',
=======
            'video' => 'required|mimes:mp4|max:10000',
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        ]);

        $courseTitleSlug = Str::slug($request->course_name);
        $image = $request->file('course_image');
        $save_url = "Course/images/".$courseTitleSlug."/".time() . '_' . $image->getClientOriginalName();
        uploadFile($save_url, $image);
        // $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        // Image::make($image)->resize(370,246)->save('upload/course/thumbnail/'.$name_gen);
        // $save_url = 'upload/course/thumbnail/'.$name_gen;
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $video = $request->file('video');
        $path = "Course/videos/".$courseTitleSlug."/".time() . '_' . $video->getClientOriginalName();
        uploadFile($path, $video);

        // $videoName = time().'.'.$video->getClientOriginalExtension();
        // $video->move(public_path('upload/course/video'), $videoName);
        // $save_video = 'upload/course/video/'.$videoName;
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $course_id = Course::insertGetId([
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'instructor_id' => Auth::user()->id,
            'course_title' => $request->course_title,
            'course_name' => $request->course_name,
            'course_name_slug' => strtolower(str_replace(' ', '-', $request->course_name)),
            'description' => $request->description,
            'video' => $path,
            'label' => $request->label,
            'duration' => $request->duration,
            'resources' => $request->resources,
            'certificate' => $request->certificate,
            'selling_price' => $request->selling_price,
            'discount_price' => $request->discount_price,
            'prerequisites' => $request->prerequisites,
            'bestseller' => $request->bestseller,
            'featured' => $request->featured,
            'highestrated' => $request->highestrated,
            'status' => 1,
            'course_image' => $save_url,
<<<<<<< HEAD
            'created_at' => Carbon::now(),
=======
            'created_at' => Carbon::now(),        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        ]);

        //Course Goals Add Form
        $goals = Count($request->course_goals);
        if($goals != NULL){
            for($i=0; $i < $goals; $i++){
                $gcount = new Course_goal();
                $gcount->course_id = $course_id;
                $gcount->goal_name = $request->course_goals[$i];
                $gcount->save();
            }
        }

        $notification = array(
            'message' => 'Course Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.course')->with($notification);
    }

<<<<<<< HEAD


=======
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
    public function EditCourse($id){
        $course = Course::find($id);
        $goals = Course_goal::where('course_id', $id)->get();
        $categories = Category::latest()->get();
        $subcategories = SubCategory::latest()->get();
        return view('instructor.courses.edit_course', compact('course', 'categories', 'subcategories', 'goals'));
    }

    public function UpdateCourse(Request $request){
<<<<<<< HEAD

        $cid = $request->course_id;

=======
        
        $cid = $request->course_id; 
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        Course::find($cid)->update([
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'instructor_id' => Auth::user()->id,
            'course_title' => $request->course_title,
            'course_name' => $request->course_name,
            'course_name_slug' => strtolower(str_replace(' ', '-', $request->course_name)),
            'description' => $request->description,
            'label' => $request->label,
            'duration' => $request->duration,
            'resources' => $request->resources,
            'certificate' => $request->certificate,
            'selling_price' => $request->selling_price,
            'discount_price' => $request->discount_price,
            'prerequisites' => $request->prerequisites,
            'bestseller' => $request->bestseller,
            'featured' => $request->featured,
            'highestrated' => $request->highestrated,
        ]);

        $notification = array(
            'message' => 'Course Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.course')->with($notification);
    }

    public function UpdateCourseImage(Request $request){
        $course_id = $request->id;
        $oldImage = $request->old_img;
<<<<<<< HEAD

=======
    
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $image = $request->file('course_image');
        // $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();

        $courseTitleSlug = $this->getCourseTitleSlug($course_id);
        $save_url = "Course/images/".$courseTitleSlug."/".time() . '_' . $image->getClientOriginalName();
        uploadFile($save_url, $image);
        // $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        // Image::make($image)->resize(370,246)->save('upload/course/thumbnail/'.$name_gen);
        // $save_url = 'upload/course/thumbnail/'.$name_gen;
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        if(file_exists($oldImage)){
            unlink($oldImage);
        }

        Course::find($course_id)->update([
            'course_image' =>  $save_url,
            'updated_at' => Carbon::now(),
        ]);
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Image Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);


    }

    public function UpdateCourseVideo(Request $request){
        $course_id = $request->vid;
        $oldVideo = $request->old_vid;
<<<<<<< HEAD

=======
    
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $video = $request->file('video');
        $courseTitleSlug = $this->getCourseTitleSlug($course_id);
        // $videoName = time().'.'.$video->getClientOriginalExtension();
        // $video->move(public_path('upload/course/video'), $videoName);
        // $save_video = 'upload/course/video/'.$videoName;
        $path = "Course/videos/".$courseTitleSlug."/".time() . '_' . $video->getClientOriginalName();
        uploadFile($path, $video);
<<<<<<< HEAD

=======
                
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        if(file_exists($oldVideo)){
            unlink($oldVideo);
        }

        Course::find($course_id)->update([
            'video' =>  $path,
            'updated_at' => Carbon::now(),
        ]);
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Video Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }

    public function UpdateCourseGoal(Request $request){
        $cid = $request->id;

        if($request->course_goals == NULL){
            return redirect()->back();
        } else {
            Course_goal::where('course_id', $cid)->delete();

            $goals = Count($request->course_goals);
<<<<<<< HEAD

=======
            
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
                for($i=0; $i < $goals; $i++){
                    $gcount = new Course_goal();
                    $gcount->course_id = $cid;
                    $gcount->goal_name = $request->course_goals[$i];
                    $gcount->save();
                }
<<<<<<< HEAD

        }


=======
            
        }

         
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Goals Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }

    public function DeleteCourse($id){

        $course = Course::find($id);
<<<<<<< HEAD
        // unlink($course->course_image);
        // unlink($course->video);
=======
        unlink($course->course_image);
        unlink($course->video);
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f

        Course::find($id)->delete();

        $goalsData = Course_goal::where('course_id', $id)->get();
        foreach($goalsData as $item){
            $item->goal_name;
            Course_goal::where('course_id', $id)->delete();
        }

        $notification = array(
            'message' => 'Course Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function AddCourseLecture($id){

        $course = Course::find($id);

        $section = CourseSection::where('course_id', $id)->latest()->get();

        return view('instructor.courses.section.add_course_lecture', compact('course', 'section'));
    }

    public function AddCourseSection(Request $request){

        $cid = $request->id;

        CourseSection::insert([
            'course_id' => $cid,
            'section_title' => $request->section_title,
        ]);

        $notification = array(
            'message' => 'Course Section Added Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
<<<<<<< HEAD

=======
    
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f

    }

    public function SaveLecture(Request $request){
        $courseId = $request->course_id;
        $courseTitleSlug = $this->getCourseTitleSlug($courseId);
        $video = $request->file('lecture_url');
        $path = "Course/videos/".$courseTitleSlug."/".time() . '_' . $video->getClientOriginalName();
        uploadFile($path, $video);

        $lecture = new CourseLecture();
        $lecture->course_id = $request->course_id;
        $lecture->section_id = $request->section_id;
        $lecture->lecture_title = $request->lecture_title;
        $lecture->url = $path; //$request->lecture_url;
        $lecture->content = $request->content;
        $lecture->save();

        return response()->json(['success' => 'Lecture Saved Successfully']);
    }

    public function EditLecture($id){
        $clecture = CourseLecture::find($id);
        return view('instructor.courses.lecture.edit_course_lecture', compact('clecture'));

    }

    public function UpdateCourseLecture(Request $request){
        $lid = $request->id;
        $courseId = $request->course_id;
        $courseTitleSlug = $this->getCourseTitleSlug($courseId);
        $video = $request->file('video');
        // dd($video);
        $path = "Course/videos/".$courseTitleSlug."/".time() . '_' . $video->getClientOriginalName();
        uploadFile($path, $video);
        // Storage::disk('s3')->put($path, file_get_contents($video), 'public');
        CourseLecture::find($lid)->update([
            'lecture_title' => $request->lecture_title,
            'url' => $path,
            'content' => $request->content,
        ]);

<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Lecture Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
<<<<<<< HEAD

=======
            
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
    }

    public function getCourseTitleSlug($courseId) {
        $course = Course::find($courseId);
        if($course) {
            return Str::slug($course->course_name);
        }
        return "";
    }

    public function DeleteLecture($id){

        CourseLecture::find($id)->delete();
<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Lecture Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
<<<<<<< HEAD

=======
            
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
    }

    public function DeleteSection($id){

        $section = CourseSection::find($id);

        //Delete related lectures
        $section->lectures()->delete();

        //Delete the section
        $section->delete();

<<<<<<< HEAD

=======
        
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f
        $notification = array(
            'message' => 'Course Section Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
<<<<<<< HEAD

=======
            
>>>>>>> fdea064c21b524e04fa06c265b662633c888f77f

    }
}

