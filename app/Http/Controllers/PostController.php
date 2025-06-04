<?php

namespace App\Http\Controllers;

use App\Helpers\ResponseHelper;
use App\Http\Resources\PostDetailResource;
use App\Http\Resources\PostResource;
use App\Models\category;
use App\Models\Media;
use App\Models\Post;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public function index(Request $request){
        $query = Post::orderByDesc('created_at');

        if($request->category_id){
            $query->where('category_id', $request->category_id);
        }

        if($request->search){
            $query->where(function($q1)use ($request){
                $q1->whereLike('title', '%' . $request->search . '%')->orWhereLike('description', '%' . $request->search . '%');
            });
        }

        $post = $query->paginate(10);
        return PostResource::collection($post)->additional(['message' => 'success']);
    }

    public function create(Request $request){
        $request->validate(
            [
                'title' => 'required',
                'description' => 'required',
                'category_id' => 'required',
            ],
            [
                'category_id.required' => 'The category field is required.'
            ]
        );

        DB::beginTransaction();
        try {
            $file_name = null;
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $file_name = uniqid() . '_' . date('Y-m-d-H-i-s') . '.' . $file->getClientOriginalExtension(); 
                Storage::put('media/' . $file_name, file_get_contents($file));
            }

            $post = new Post();
            $post->user_id = auth()->user()->id;
            $post->title = $request->title;
            $post->description = $request->description;
            $post->category_id = $request->category_id;
            $post->save();

            $media = new Media();
            $media->file_name = $file_name;
            $media->file_type = 'image';
            $media->model_id = $post->id;
            $media->model_type = Post::class;
            $media->save();
            
            DB::commit();
            return ResponseHelper::success([],'Successsfully Uploaded');
        } catch (Exception $e) {
            DB::rollback();
            return ResponseHelper::fail($e->getMessage());
        }
    }

    public function show($id){
        $post = Post::where('id',$id)->firstOrFail();

        return ResponseHelper::success(new PostDetailResource($post));
    }
}
