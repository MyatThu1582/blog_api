<?php

namespace App\Http\Resources;

use App\Models\category;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'title' => $this->title,
            'description' => Str::limit($this->description, 100),
            'category_name' => $this->category->name ?? 'Unknown Category',
        ];
    }
}
