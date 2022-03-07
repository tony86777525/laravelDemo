@inject('mainPresenter', 'App\Presenters\MainPresenter')
@extends('user.basic.main')

@section('pageCss')
    <link rel="stylesheet" href="{{ asset('css/plugin/wowslider.css') }}">
@endsection

@section('pageJs')
    <script src="{{ asset('js/plugin/wowslider.js') }}"></script>
    <script src="{{ asset('js/plugin/wowsliderfulltype.js') }}"></script>
    <script src="{{ asset('js/user/common/wowslider.js') }}"></script>
@endsection

@section('contents')
    <div class="main">
        <div id="wowslider-container1" class="wowslider-container wowslider-container--full" data-id="wowslider-container1">
            <div class="ws_images">
                <ul>
                    <li><img src="https://job-chocolat.jp/assets/img/mens/pc/group/img-top2.jpg"></li>
                    <li><img src="https://job-chocolat.jp/assets/img/mens/pc/group/img-top2.jpg"></li>
                </ul>
            </div>
        </div>
    </div>
@endsection

@section('navbar')
@endsection