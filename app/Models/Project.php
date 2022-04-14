<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

use App\Models\ProjectCategory;

class Project extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['title', 'excerpt', 'seo_title', 'meta_description', 'meta_keywords'];
    protected $table = 'project';

    public function project_category()
    {
      return $this->belongsTo(ProjectCategory::class)->with(['translations']);
    }
}
