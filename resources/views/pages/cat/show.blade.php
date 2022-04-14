@extends('partials.layout')
@section('page_title',(strlen($category_one->name) > 1 ? $category_one->name : ''))
@section('seo_title', (strlen($category_one->seo_title) > 1 ? $category_one->seo_title : ''))
@section('meta_keywords',(strlen($category_one->meta_keywords) > 1 ? $category_one->meta_keywords : ''))
@section('meta_description', (strlen($category_one->meta_description) > 1 ? $category_one->meta_description : ''))
@section('image', '')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">
        <h1>#{{ $category_one->name }}</h1>
    </div>
</section>

<section class="gallery">
    <div class="container">
        <div class="items">
        	@foreach($categories as $c)
        		@foreach($c->project as $p)
        		<a href="{{ route('projects.show.project', ['projects' => $c->slug, 'article' => $p->slug]) }}">
        			<img src="{{ Voyager::image($p->image) }}" alt="{{ $p->title }}">      
	                <span>{{ $p->title }}</span>
            	</a>
            	@endforeach       
        	@endforeach          
        </div>
    </div>
</section>

@endsection