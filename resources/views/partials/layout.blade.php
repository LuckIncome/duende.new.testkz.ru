<!DOCTYPE html>
<html lang="{{session()->get('locale')}}">
  @include('partials.head')
<body>
  <vue id="app">    
    @include('partials.header')
    <main class="main" @if(\Request::is('/')) :class="{'main-index' : isIndex}" @endif> 
      @yield('content')
    </main>
    @include('partials.footer')
    @include('partials.sidebar')
    @include('partials.modals')
    <!-- Затемнение сайта -->
      <div class="wrapper" @click="toggleWrapper" :class="{'wrapper-show': isWrapper}">
      </div>
    <!-- /Затемнение сайта -->
  </vue>
  @include('partials.scripts')
  @yield('scripts')
</body>
</html>