<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SpeakerRequest extends FormRequest
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
        return [
            'sn'=>'required',
            'model'=>'required',
            'inventario'=>'required'
        ];
    }

    public function attributes()
    {
        return [
            'sn'=>'Numero de serie',
            'model'=>'Modelo',
            'inventario'=>'Inventario'
        ];
    }
}
