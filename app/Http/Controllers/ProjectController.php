<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Project;
use App\Models\ProjectCategory;

use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index() 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $categories = ProjectCategory::with(['translations'])
            ->where('slug', '!=', 'projects')
            ->where('status', true)
            ->orderBy('sort_id', 'desc')
            ->get()
            ->translate($locale, $fallbackLocale);

        $page = Page::with(['translations'])->where(['type' => 'cat'])->firstOrFail();
        $page = $page->translate($locale, $fallbackLocale);
        return view('pages.cat.index', compact(
            'page',
            'categories'
        ));
    }

    public function show($projects) 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default'); 

        $category_one = ProjectCategory::with(['translations'])
            ->where('slug', $projects)
            ->where('status', true)
            ->orderBy('sort_id', 'desc')
            ->first()
            ->translate($locale, $fallbackLocale);

        $categories = ProjectCategory::with(['translations'])
            ->with(['project' => function($q) {
                $q->where('status', true)->orderBy('sort_id', 'desc')->get();
            }])   
            ->where('slug', $projects)
            ->where('status', true)
            ->orderBy('sort_id', 'desc')
            ->get()
            ->translate($locale, $fallbackLocale);       

        return view('pages.cat.show', compact('category_one', 'categories'));
    }

    public function projectShow($projects, $article) 
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        $category_one = ProjectCategory::with(['translations'])
            ->where('slug', $projects)
            ->where('status', true)
            ->orderBy('sort_id', 'desc')
            ->first()
            ->translate($locale, $fallbackLocale);

        $project = Project::with(['translations'])  
            ->where('slug', $article)
            ->where('status', true)
            ->orderBy('sort_id', 'desc')
            ->first()
            ->translate($locale, $fallbackLocale);

        return view('pages.cat.project_show', compact('project', 'category_one'));
    }
}
