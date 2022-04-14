@extends('partials.layout')
@section('page_title',(strlen($project->title) > 1 ? $project->title : ''))
@section('seo_title', (strlen($project->seo_title) > 1 ? $project->seo_title : ''))
@section('meta_keywords',(strlen($project->meta_keywords) > 1 ? $project->meta_keywords : ''))
@section('meta_description', (strlen($project->meta_description) > 1 ? $project->meta_description : ''))
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
        <p>{!! $project->excerpt !!}</p>
        <div class="gallery-items">
            @if($project->images)
            	@foreach (json_decode($project->images) as $i)
            		<a href="{{ Voyager::image($i) }}">
    	                <img src="{{ Voyager::image($i) }}" alt="{{ $project->title }}">
                	</a>
            	@endforeach    
            @else
                <h2>Контент еще не загружен!<h2>
        	@endif
        </div>
    </div>
</section>

@endsection