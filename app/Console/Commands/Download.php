<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class Download extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'load:video';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'load video';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();


    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
//        file_get_contents("https://m8.6666piayer.com/peWSeWZw.mp4", storage_path('app/public/video'));

//        $stream_opts = [
//            "ssl" => [
//                "verify_peer"=>false,
//                "verify_peer_name"=>false,
//            ]
//        ];
//
//        $response = file_get_contents("https://m8.6666piayer.com/peWSeWZw.mp4",
//            storage_path('app/public/video'), stream_context_create($stream_opts));
//
//        $this->line('success');

        // 远程文件链接
        $url = 'https://m8.6666piayer.com/peWSeWZw.mp4';
        // 设置浏览器下载的文件名，这里还以原文件名一样
                $filename = basename($url);
        // 获取远程文件大小
        // 注意filesize()无法获取远程文件大小
                $headers = get_headers($url, 1);
                $fileSize = $headers['Content-Length'];
        // 设置header头
        // 因为不知道文件是什么类型的，告诉浏览器输出的是字节流
                header('Content-Type: application/octet-stream');
        // 告诉浏览器返回的文件大小类型是字节
                header('Accept-Ranges:bytes');
        // 告诉浏览器返回的文件大小
                header('Content-Length: ' . $fileSize);
        // 告诉浏览器文件作为附件处理并且设定最终下载完成的文件名称
                header('Content-Disposition: attachment; filename="' . $filename . '"');
        //针对大文件，规定每次读取文件的字节数为4096字节，直接输出数据
                $read_buffer = 4096;
                $handle = fopen($url, 'rb');
        //总的缓冲的字节数
                $sum_buffer = 0;
        //只要没到文件尾，就一直读取
        while (!feof($handle) && $sum_buffer < $fileSize) {
            fread($handle, $read_buffer);
            $sum_buffer += $read_buffer;
        }
        fclose($handle);


        $this->line("success");
    }
}
