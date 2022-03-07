@inject('mainPresenter', 'App\Presenters\MainPresenter')
<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="robots" content="noindex,noarchive">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Title -->
    {{--<title>{{ $mainPresenter->getPageTitle() }}</title>--}}
    <!-- Basic Css Start -->
    {{--<link href="{{ secure_asset('css/user/pc/basic/app.css') }}" rel="stylesheet">--}}
    {{--<link href="{{ secure_asset('css/user/pc/basic/navbar.css') }}" rel="stylesheet">--}}
    <!-- Basic Css Start -->
    <!-- Page Css Start -->
    @yield('pageCss')
    <!-- Page Css End -->
</head>
<body>
    <!-- Main Start -->
    <main>
        <!-- Header Start -->
        <header></header>
        <!-- Header End -->
        <!-- Contents Start -->
        <div class="wrap">
            {{--<div class="navbar">--}}
                {{--@yield('navbar')--}}
            {{--</div>--}}
            <div class="contents">
                @yield('contents')
            </div>
        </div>
        <!-- Contents End -->
        <!-- Footer Start -->
        <footer class="footer"></footer>
        <!-- Footer End -->
    </main>
    <!-- Main End -->
    <!-- Basic Js Start -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    {{--<script src="{{ asset('js/app.js') }}"></script>--}}
    {{--<script src="{{ asset('js/bootstrap.js') }}"></script>--}}
    <!-- Basic Js End -->
    <!-- Page Js Start -->
    @yield('pageJs')
    <!-- Page Js End -->
</body>
</html>
