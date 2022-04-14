<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

use App\Models\Project;

class ProjectCategory extends Model
{
    use HasFactory;
    use Translatable;
    protected $translatable = ['name', 'seo_title', 'meta_description', 'meta_keywords'];
    protected $table = 'project_category';

    public function project()
    {
      return $this->hasMany(Project::class)->with(['translations']);
    }
}
