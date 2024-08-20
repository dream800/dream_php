<?php


namespace App\Exceptions\Bank;

use Exception;
use Illuminate\Support\Facades\Request;
use Log;

class BaseException extends Exception
{
    public $code = 400;
    public $msg = 'invalid parameters';
    public $errorCode = 999;

    public $shouldToClient = true;

    /**
     * 构造函数，接收一个关联数组
     * @param array $params 关联数组只应包含code、msg和errorCode，且不应该是空值
     */
    public function __construct($params = [])
    {
        if (!is_array($params)) {
            return;
        }
        if (array_key_exists('code', $params)) {
            $this->code = $params['code'];
        }
        if (array_key_exists('msg', $params)) {
            $this->msg = $params['msg'];
        }
        if (array_key_exists('errorCode', $params)) {
            $this->errorCode = $params['errorCode'];
        }
    }

    public function render()
    {
        //如果是自定义异常，则控制http状态码，不需要记录日志
        //因为这些通常是因为客户端传递参数错误或者是用户请求造成的异常
        //不应当记录日志
        $request = Request::instance();
        $result = [
            'msg' => $this->msg,
            'error_code' => $this->errorCode,
            'request_url' => $request = $request->url()
        ];
        return response($result, $this->code);
    }

    /**
     * @param Exception $e
     */
    private function recordErrorLog(Exception $e)
    {
        //    Log::init([
        //        'type'  =>  'File',
        //        'path'  =>  LOG_PATH,
        //        'level' => ['error']
        //    ]);
        //    Log::record($e->getTraceAsString());
        //    Log::record($e->getMessage(),'error');
    }
}