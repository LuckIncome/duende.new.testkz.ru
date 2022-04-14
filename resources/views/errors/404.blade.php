@extends('partials.layout')
@section('page_title', __('general.pageNotFound'))
@section('seo_title',  __('general.pageNotFound'))
@section('meta_keywords', __('general.pageNotFound'))
@section('meta_description',  __('general.pageNotFound'))
@section('image',env('APP_URL').'/images/og.jpg')
@section('url',url()->current())
@section('page_class','page')
@section('content')
<section class="form">
    <div class="container">
		<h2>404</h2>
		<p>@lang('general.dearUser')</p>
		<p>@lang('general.notFoundTitle')</p>
		<p>@lang('general.notFoundText')</p>
		<a href="/">@lang('general.backToHome')</a>
	</div>
</section>
@endsection