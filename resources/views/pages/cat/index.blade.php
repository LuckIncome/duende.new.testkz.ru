@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image', '')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="form">
    <div class="container">
    	<h2>{{ $page->title }}</h2>
    	<br><br>
    	@foreach($categories as $category)
			<p>
				<a href="{{ route('projects.show', ['projects' => $category->slug]) }}">
					{{ $category->name }}
				</a>
			</p>
		@endforeach
	</div>
</section>

@endsection