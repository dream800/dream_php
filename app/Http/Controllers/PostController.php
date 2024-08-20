<?php


namespace App\Http\Controllers;


use App\Http\Requests\ActivityRequest;
use Illuminate\Http\Request;

class PostController
{
    public function create(Request $request)
    {

    }

    public function store(ActivityRequest $activityRequest)
    {
        dd($activityRequest->getDataByRule(\Illuminate\Support\Facades\Request::all()));

        // 博客文章验证通过...
    }
}