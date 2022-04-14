<div class="loader" :class="{'loader-done' : !isOnload}">
    <loader></loader>
</div>

@if(\Request::is('/'))  
    <div class="preview">
        <loader></loader>
        <a href="#header"><img src="{{ asset('assets/images/icons/muse.svg') }}" alt="muse"></a>
        <div class="anim"></div>
    </div>
@endif

<header class="header" id="header" :class="{'header-index' : isIndex}">
    <div class="container">
        <button class="header__toggle" @click="toggleSidebar">
            <i class="bi bi-list"></i>
        </button>
        
        {{menu('header_menu','vendor.voyager.menu.header_menu')}}

        <ul class="header__lang">                             
            <li>
                <a href="/locale/ru" @if(session()->get('locale') == 'ru') class="active" @endif>
                    RUS
                </a>
            </li>
            <li>
                <a href="/locale/en" @if(session()->get('locale') == 'en') class="active" @endif>
                    ENG
                </a>
            </li>
        </ul>
    </div>  
</header>
