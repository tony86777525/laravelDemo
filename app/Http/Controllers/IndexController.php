<?php

namespace App\Http\Controllers;

class IndexController extends Controller
{
    public function index()
    {
//        $this->mainPresenter()->setPageTitle('ショコラ媒体 取扱説明');

        $viewData = [
        ];

        return view("user.index.index", $viewData);
    }
}
