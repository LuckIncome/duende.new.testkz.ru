@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image',$page->thumbic)
@section('url',url()->current())
@section('page_class','page')
@section('content')
 
<section class="form">
    <div class="container">
        <h2>@lang('general.leaveRequestContact')</h2>
        <form id="feedback_form" action="{{ route('feedback') }}" method="POST">
            @csrf
            <input type="text" name="name" placeholder="@lang('general.nameForm')" required>
            <input type="email" name="email" placeholder="@lang('general.emailForm')" required>
            <select name="city">
                <option value="1">@lang('general.almaty')</option>
                <option value="2">@lang('general.astana')</option>
                <!--<option value="2">@lang('general.taraz')</option>-->
                <!--<option value="3">@lang('general.shymkent')</option>-->
            </select>
            <input required type="text" name="phone" @click="phoneValue(event)" placeholder="@lang('general.phoneForm')" v-maska="['+7 (###) ##-##-##', '+7 (###) ###-##-##']">
            <textarea name="text" placeholder="@lang('general.textForm')"></textarea>
            <button type="submit">@lang('general.sendMessage')</button>
        </form>
    </div>
</section>

@endsection