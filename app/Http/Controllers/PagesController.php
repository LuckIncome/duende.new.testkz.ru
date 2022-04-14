<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Partner;
use App\Models\Advantage;
use App\Models\Text;
use App\Models\Project;
use App\Models\ProjectCategory;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PagesController extends Controller
{
    public function getPage($slug = 'home')
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('voyager.multilingual.default');

        if (strpos(url()->current(), 'home') !== false) {            
            abort(404);
        } else {
            $page = Page::select('type', 'id', 'title', 'excerpt', 'body', 'image', 'slug', 'seo_title', 'meta_description', 'meta_keywords', 'status')
                ->where(['slug' => $slug, 'status' => Page::STATUS_ACTIVE])
                ->firstOrFail();
        }
        $page = $page->translate($locale, $fallbackLocale);

        $pages = Page::withTranslation($locale)->whereNotIn('type',['home'])->where('status',Page::STATUS_ACTIVE)->get();
        $pages = $pages->translate($locale,$fallbackLocale);
        $pages = $pages->groupBy('type');

        switch ($page->type) {
            case 'home':
                $partners = Partner::get();
                $advantages = Advantage::with(['translations'])
                    ->get()
                    ->translate($locale, $fallbackLocale);
                $text = Text::with(['translations'])
                    ->first()
                    ->translate($locale, $fallbackLocale);

                $projects = ProjectCategory::with(['translations'])
                    ->with(['project' => function($q) {
                        $q->where('sort_id', '!=', 1)
                            ->where('status', true)
                            ->take(5)
                            ->get();
                    }])   
                    ->where('sort_id', 1)
                    ->where('status', true)
                    ->take(5)
                    ->get()
                    ->translate($locale, $fallbackLocale); 

                $project_one = ProjectCategory::with(['translations'])
                    ->with(['project' => function($q) {
                        $q->where('sort_id', 1)
                            ->where('status', true)
                            ->get();
                    }])   
                    ->where('sort_id', 1)
                    ->where('status', true)
                    ->first()
                    ->translate($locale, $fallbackLocale);  

                return view('pages.' . $page->type, compact(
                    'page', 
                    'pages', 
                    'partners', 
                    'advantages', 
                    'text',
                    'project_one',
                    'projects'
                ));
                break;

            case 'simple':
                return view('pages.' . $page->type, compact('page'));
                break;
            default :
                return view('pages.' . $page->type, compact('page'));
                break;
        }
    }

    public function setLocale($locale)
    {
        if (in_array($locale, config()->get('voyager.multilingual.locales'))) {
            session()->put('locale', $locale);
        }
        return redirect()->back();
    }
}
