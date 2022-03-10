<?php

namespace App\Http\Requests\Nomencladores;

use Illuminate\Foundation\Http\FormRequest;

class VelocidadRamUpdateRequest extends FormRequest
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
            'name'=>'required|unique:nm_velocidad_rams,name,'.$this->nmVelocidadRam->id
        ];
    }

    public function attributes()
    {
        return ['name'=>'Velocidad ram'];
    }
}
