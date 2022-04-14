<!-- Сайд-бар -->
    <div class="sidebar" :class="{'sidebar-show': isSidebar}">
        <div class="sidebar__head">
            <a href="/">
                <img src="{{Voyager::image(setting('site.favicon'))}}" alt="logo">
            </a>
            <button class="sidebar__toggle" @click="toggleWrapper">
                <i class="bi bi-x"></i>
            </button>
        </div>

        {{menu('header_menu','vendor.voyager.menu.sidebar_menu')}}

        <div class="sidebar__network">
            @foreach ($socials as $social)
                <a href="{{ $social->link }}"><img src="{{ Voyager::image($social->icon) }}" alt="{{ $social->value }}"></a>
            @endforeach
        </div>
    </div>
<!-- /Сайд-бар -->