@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image',$page->thumbic)
@section('url',url()->current())
@section('page_class','page')
@section('content')



<section class="banner">
    <img src="{{ asset('assets/images/icons/figure-1.png') }}" class="figure" alt="icon">
    <div class="container">
        <div class="mikkelange">
            <img src="{{ asset('assets/images/mikkelange.png') }}" alt="img">
            <transition name="fade">
                <img src="{{ asset('assets/images/mikkelange-animation.png') }}" class="img" v-if="isToggle" alt="img">
            </transition>
        </div>
        <div class="banner__info">
            <h2 class="title">
                <img src="{{ asset('assets/images/icons/about-text.svg') }}" alt="icon">
            </h2>
            <div class="text" :class="{'text-show':isAbout}">
                {!! $text->text !!}
                <div v-if="isAbout">
                    {!! $text->second_text !!}
                </div>
                <button @click="isAbout = !isAbout">@{{ !isAbout ? 'Далeе ' : 'Закрыть ' }}<i class="bi bi-arrow-right"></i></button><img src="{{ asset('assets/images/icons/quotes.svg') }}" class="img" alt="quotes">
            </div>
        </div>
    </div>
</section>

<section class="advantages">
    <div class="container">
        @foreach($advantages as $advantage)
            <div class="advantage">
            <myprogress num="{{ $advantage->number }}" 
                @if($advantage->id == 1) prog="490" up1="10" up2="60" ref="childComponent1" @endif
                @if($advantage->id == 2) prog="520" up1="10" up2="8" ref="childComponent2" @endif
                @if($advantage->id == 3) prog="490" up1="10" up2="40" ref="childComponent3" @endif
                ></myprogress>
                <p>{{ $advantage->excerpt }}</p>     
            </div>
        @endforeach
    </div>
</section>

<section class="projects" id="projects">
    <img src="{{ asset('assets/images/icons/figure-2.svg') }}" class="figure" alt="figure-2">
    <div class="container">
        <!-- <h2 class="title">PROJECTS</h2> -->
        <h2 class="title"><img src="{{ asset('assets/images/icons/projects-text.svg') }}" alt="projects-text"></h2>
        <div class="items">
            @foreach($projects as $project)
                @foreach($project->project as $pro)
                    <a href="{{ route('projects.show.project', ['projects' => $project->slug, 'article' => $pro->slug]) }}">
                        <img src="{{ Voyager::image($pro->image) }}" alt="{{ $pro->title }}">
                        <span>{{ $pro->title }}</span>
                    </a>
                @endforeach
            @endforeach
            <div>
                @foreach($project_one->project as $p)
                <a href="{{ route('projects.show.project', ['projects' => $project_one->slug, 'article' => $p->slug]) }}">
                    <img src="{{ Voyager::image($p->image) }}" alt="{{ $p->title }}">
                    <span>{{ $p->title }}</span>
                </a>
                @endforeach
                <a href="{{route('pages.get',$pages['order']->first()->slug)}}">@lang('general.leaveRequest')</a>
            </div>
        </div>
    </div>
</section>

<section class="services" id="services">
    <div class="container">
        <!-- <h2 class="title">services</h2> -->
        <h2 class="title"><img src="{{ asset('assets/images/icons/services-text.svg') }}" alt="services-text"></h2>
        <div class="items">
            {{-- <a href="/cat/design" class="item wow"> --}}
            <a href="/design" class="item wow">
                <div class="images">
                    <img src="{{ asset('assets/images/services-1.png') }}" class="img" alt="services-1">
                </div>
                <h3>#DESIGN</h3>
            </a>
            {{-- <a href="/cat/event" class="item wow"> --}}
            <a href="/event" class="item wow">
                <div class="images">
                    <img src="{{ asset('assets/images/services-2.png') }}" class="img" alt="services-2">
                </div>
                <h3>#EVENT</h3>
            </a>
           {{--  <a href="/cat/trademarketing" class="item wow"> --}}
            <a href="/trademarketing" class="item wow">
                <div class="images">
                    <img src="{{ asset('assets/images/services-3.png') }}" class="img" alt="services-3">
                </div>
                <h3>#TRADEMARKETING</h3>
            </a>
        </div>
        <div class="hr"></div>
    </div>
</section>

<section class="partners">
    <div class="container">
        <div class="partners__wrapper">

            <div class="partners-slider">
                @foreach($partners as $partner)
                <a href="{{ $partner->slug }}">
                    <img src="{{ Voyager::image($partner->image_bg) }}" alt="{{ $partner->alt }}">
                    <img src="{{ Voyager::image($partner->image) }}" alt="{{ $partner->alt }}">
                </a>
                @endforeach
            </div>

            <div class="partners__arrows-wrapper">
                <button class="partners__arrows partners__arrows-left">
                    <i class="bi bi-chevron-left"></i>
                </button>
                <button class="partners__arrows partners__arrows-right">
                    <i class="bi bi-chevron-right"></i>
                </button>
            </div>
        </div>
            
    </div>
</section>

<section class="contact" id="contact">
    <img src="{{ asset('assets/images/icons/figure-3.svg') }}" class="figure" alt="figure-3">
    <div class="container">
        <!-- <h2 class="title">contact</h2> -->
        <h2 class="title"><img src="{{ asset('assets/images/icons/contact-text.svg') }}" alt="contact-text"></h2>
        <maps></maps>
    </div>
</section>

@endsection