<?php

use Illuminate\Support\Facades\Storage;

// Get Image
function getImageUrl($imagePath)
{
    try {
        $image = Storage::disk('s3')->url($imagePath);
        // "https://d3en10z91zfucg.cloudfront.net/" . $imagePath;
        return $image;
    } catch (\Throwable $th) {
        //throw $th;
        return "";
    }
}


function uploadFile($path, $file)
{
    Storage::disk('s3')->put($path, file_get_contents($file), 'public');
}

function deleteImage($imagePath)
{
    if ($imagePath && Storage::disk(env('UPLOAD_DRIVER', 'public'))->exists($imagePath)) {
        Storage::disk(env('UPLOAD_DRIVER', 'public'))->delete($imagePath);
    }
}
