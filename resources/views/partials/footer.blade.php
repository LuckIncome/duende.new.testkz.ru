<footer class="footer">
    <div class="container">
        <div class="cities">
            <div class="town">
                <h3>@lang('general.kazakhstan')</h3>
                <p>@lang('general.almaty')</p> 

                @foreach($phone_almaty as $pa)
                    <a href="tel:{{ $pa->link }}">{{ $pa->value }}</a>
                @endforeach

                <a href="mailto:{{ $email->value }}">{{ $email->value }}</a>

                <a target="_blank" href="{{ $address_almaty->value }}">
                    {{ $address_almaty->translate_value }}
                </a>

            </div>
            <div class="town">
                <h3>@lang('general.kazakhstan')</h3>
                <p>@lang('general.astana')</p>

                @foreach($phone_astana as $pas)
                    <a href="tel:{{ $pas->link }}">{{ $pas->value }}</a>
                @endforeach

                <a href="mailto:{{ $email->value }}">{{ $email->value }}</a>

                <a target="_blank" href="{{ $address_astana->value }}">
                    {{ $address_astana->translate_value }}
                </a>

            </div> 
        </div>
        <div class="network">
            @foreach ($socials as $social)
                <a href="{{ $social->link }}"><img src="{{ Voyager::image($social->icon) }}" alt="{{ $social->value }}"></a>
            @endforeach
        </div>
    </div>
</footer>