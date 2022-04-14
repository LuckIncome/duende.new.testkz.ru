<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\FeedbackController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::post('/feedback', [FeedbackController::class,'feedback'])->name('feedback');
/*
Route::group(['prefix' => 'cat'], function() {
    Route::get('/', [ProjectController::class, 'index'])->name('projects');
    Route::get('/{projects}', [ProjectController::class, 'show'])->name('projects.show');
    Route::get('/{projects}/{article}', [ProjectController::class, 'projectShow'])->name('projects.show.project');
});
*/
Route::get('/{projects}', [ProjectController::class, 'show'])->name('projects.show');
Route::get('/{projects}/{article}', [ProjectController::class, 'projectShow'])->name('projects.show.project');

Route::get('/locale/{lang}',[PagesController::class,'setLocale'])->name('locale.set');
Route::get('/{page?}',[PagesController::class,'getPage'])->name('pages.get');