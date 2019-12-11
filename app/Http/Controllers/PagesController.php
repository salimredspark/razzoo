<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;
use App\LoanApplicationBusinessFiles;
use App\LoanApplicationBankFiles;
use App\Pages;
use Illuminate\Support\Facades\File;
use Session;
use SoapClient;

class PagesController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if (!$request->slug) return redirect()->route('not-found');

        $page = Pages::where([['slug', '=', $request->slug]])->first();

        if (!$page) return redirect()->route('not-found');

        $pageContent = str_replace('[contact-form]', $this->contactUsPage($page), $page->content);

        $pageArr['title'] = $page->title;
        $pageArr['content'] = $pageContent;
        $pageArr['slug'] = $page->slug;

        return view('pages.page', ['page' => $pageArr]);
    }

    public function contactUsPage($page)
    {
        return view('contact.form', ['page' => $page]);
    }
}
