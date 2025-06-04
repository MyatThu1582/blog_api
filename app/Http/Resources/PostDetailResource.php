<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;

class PostDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'owner_name' => $this->user->name,
            'created_at' => Carbon::parse($this->created_at)->format('d-m-Y h:i:s A'),
            'created_at_readable' => Carbon::parse($this->created_at)->diffForHumans(),
            'category_name' => optional($this->category)->name ?? 'Unknown Category',
            'title' => $this->title,
            'description' => $this->description,
            'image_path' => $this->image ? asset('storage/media/' . $this->image->file_name) : null,
        ];
    }
}
