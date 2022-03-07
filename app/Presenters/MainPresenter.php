<?php

namespace App\Presenters;

class MainPresenter
{
    protected $pageTitle;

    public function setPageTitle($string)
    {
        $this->pageTitle = $string;
    }
}
