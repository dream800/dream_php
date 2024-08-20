<?php

namespace App\Exceptions\Bank;


class InvalidRequestException extends BaseException
{
    public $code = 404;
    public $msg = 'global:your required resource are not found';
    public $errorCode = 10001;
}
