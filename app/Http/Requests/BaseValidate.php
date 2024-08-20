<?php

namespace App\Http\Requests;

use App\Exceptions\Bank\ParameterException;
use App\Exceptions\Bank\ParamException;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class BaseValidate extends FormRequest
{
    /**
     *
     * @param $arrays 通常传入request.post变量数组
     * @return array  按照规则key过滤后的变量数组
     * @throws ParamException
     */
    public function getDataByRule($arrays)
    {
        if (array_key_exists('user_id', $arrays) | array_key_exists('uid', $arrays)) {
            // 不允许包含user_id或者uid，防止恶意覆盖user_id外键
            throw new ParamException(['msg' => '参数中包含有非法的参数名user_id或者uid']);
        }
        $newArray = [];
        foreach ($this->rules() as $key => $value) {
            $newArray[$key] = $arrays[$key];
        }
        return $newArray;
    }

    /**
     * 重写验证失败方法
     *
     * @param Validator $validator
     * @throws ParamException
     */
    protected function failedValidation(Validator $validator) {
        $error= $validator->errors()->all();

        throw new ParamException([
            'msg' => is_array($error) ? implode(
            '|', $error) : $error
        ]);
    }

    protected function isPositiveInteger($value, $rule='', $data='', $field='')
    {
        if (is_numeric($value) && is_int($value + 0) && ($value + 0) > 0) {
            return true;
        }
        return $field . '必须是正整数';
    }

    protected function isNotEmpty($value, $rule='', $data='', $field='')
    {
        if (empty($value)) {
            return $field . '不允许为空';
        } else {
            return true;
        }
    }

    //没有使用TP的正则验证，集中在一处方便以后修改
    //不推荐使用正则，因为复用性太差
    //手机号的验证规则
    protected function isMobile($value)
    {
        $rule = '^1(3|4|5|7|8)[0-9]\d{8}$^';
        $result = preg_match($rule, $value);
        if ($result) {
            return true;
        } else {
            return false;
        }
    }

}
