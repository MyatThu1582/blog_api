<?php

namespace App\Http\Controllers;

use App\Helpers\ResponseHelper;
use App\Http\Resources\OwnPostResource;
use App\Http\Resources\PostResource;
use App\Http\Resources\ProfileResource;
use App\Models\Post;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index(){
        $user = auth()->user();

        $data = new ProfileResource($user); // For Single Data
        // $data = ProfileResource::collection(); Multi Data

        return ResponseHelper::success($data);
    }

    public function posts(Request $request){
        $id = auth()->user()->id;

        $query = Post::orderByDesc('created_at')->where('user_id', $id);

        if ($request->category_id && $request->search) {
            $query->where(function ($q) use ($request) {
                $q->where('category_id', $request->category_id)
                ->where(function ($q2) use ($request) {
                    $q2->where('title', 'like', '%' . $request->search . '%')
                        ->orWhere('description', 'like', '%' . $request->search . '%');
                });
         });
        }


        if($request->category_id){
            $query->where('category_id', $request->category_id);
        }

        if($request->search){
            $query->whereLike('title', '%' . $request->search . '%')->orWhereLike('description', '%' . $request->search . '%');
        }


        $posts = $query->get();

        return ResponseHelper::success(OwnPostResource::collection($posts));

    }
}
