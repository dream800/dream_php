<?php

namespace App\Http\Requests;


class ActivityRequest extends BaseValidate
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'position'=>['bail', 'required', 'int'],
            'title'=>'required|string',
        ];
        return $rules;
    }

    public function messages()
    {
        $message = [
            'position.required' => 'position is requires! ',
            'position.int' => 'position must bu integer!',
        ];
        return $message;
    }
}
