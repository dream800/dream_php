<?php

namespace App\Http\Controllers\Admin;

/**
 * Class LoginController
 *
 * @package \App\Http\Controllers\Admin
 */
class LoginController
{
    public function login()
    {
        return response()->json([
            'code' => 20000,
            'msg' => 'success',
            'data' => [
                'token' => md5('123456')
            ]
        ]);
    }

    public function info()
    {
        return response()->json([
            'code' => 20000,
            'msg' => 'success',
            'data' => [
                'id' => 1,
                'username' => 'super',
                'password' => '123456',
                'avatar' => '',
                'roles' => 'admin',
                'nickname' => 'admin',
                'introduction' => 'I am a super administrator',
            ]
        ]);
    }

    public function logout()
    {
        return response()->json([
            'code' => 20000,
            'msg' => 'success',

        ]);
    }
}