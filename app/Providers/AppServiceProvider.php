<?php

namespace App\Providers;

use TCG\Voyager\Models\Page;
use App\Models\Contact;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Http\Controllers\ContentTypes\Image;
use TCG\Voyager\Http\Controllers\ContentTypes\MultipleImage;
use TCG\Voyager\Http\Controllers\Controller;
use TCG\Voyager\Http\Controllers\VoyagerController;
use TCG\Voyager\Http\Controllers\VoyagerSettingsController;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(VoyagerBaseController::class, \App\Http\Controllers\Voyager\VoyagerBaseController::class);
        $this->app->bind(VoyagerController::class, \App\Http\Controllers\Voyager\VoyagerController::class);
        $this->app->bind(Controller::class, \App\Http\Controllers\Voyager\Controller::class);
        $this->app->bind(VoyagerSettingsController::class, \App\Http\Controllers\Voyager\VoyagerSettingsController::class);
        $this->app->bind(Image::class, \App\Http\Controllers\Voyager\ContentTypes\Image::class);
        $this->app->bind(MultipleImage::class, \App\Http\Controllers\Voyager\ContentTypes\MultipleImage::class);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191); 
        view()->composer('*', function ($view) {
            $view->with('locale', session()->get('locale'));
            $view->with('fallbackLocale', config('voyager.multilingual.default'));
        });

        view()->composer(['partials.header', 'partials.footer', 'partials.sidebar'], function ($view)
        {
            $locale = session()->get('locale');
            $fallbackLocale = config('voyager.multilingual.default');

            $phone_almaty = Contact::select('value', 'link')->where('type','phone')->where('city', 'almaty')->where('status',true)->get();
            $view->with('phone_almaty',$phone_almaty);

            $phone_astana = Contact::select('value', 'link')->where('type','phone')->where('city', 'astana')->where('status',true)->get();
            $view->with('phone_astana',$phone_astana);

            $email = Contact::select('value')->where('type','email')->where('status',true)->firstOrFail();
            $view->with('email',$email);

            $address_almaty = Contact::with(['translations'])->where('type','address')->where('city', 'almaty')->where('status',true)->firstOrFail();
            $address_almaty = $address_almaty->translate($locale,$fallbackLocale);
            $view->with('address_almaty',$address_almaty);

            $address_astana = Contact::with(['translations'])->where('type','address')->where('city', 'astana')->where('status',true)->firstOrFail();
            $address_astana = $address_astana->translate($locale,$fallbackLocale);
            $view->with('address_astana',$address_astana);

            $socials = Contact::where('type','social')->where('status',true)->orderBy('sort_id')->get();
            $view->with('socials',$socials);

            $pages = Page::withTranslation($locale)->whereNotIn('type',['home'])->where('status',Page::STATUS_ACTIVE)->get();
            $pages = $pages->translate($locale,$fallbackLocale);
            $pages = $pages->groupBy('type');            
            $view->with('pages',$pages);
        });
    }
}
