<?php


namespace App\Http\Controllers;


use App\Service\Chain\Test;
use Illuminate\Http\Request;

class HomeController
{
    public function index(Request $request)
    {

        return 'bank.cn';


        echo 111;exit;

        file_get_contents("https://m8.6666piayer.com/peWSeWZw.mp4", storage_path('app/public/video'));


//        (new Test())->test();
//        $a = $request->a;
//
//        assert($a != null);
//
//
//
//        return $a;
//
//        $files = $request->file('file');
//
//        dd($files);
//
//        foreach ($files as $file) {
//            echo $file->getClientOriginalName();
//        }

//        $banner = Banner::create([
//            'name' => '首页的热点轮播图',
//            'description' => '描述描述'
//        ]);
//
//        $banner->notify(new TestNum($banner));


//        $user = Banner::find(3);
//
//        foreach ($user->notifications as $notification) {
//            dump($notification->data);
//        }

//        return 'hello';
    }
}