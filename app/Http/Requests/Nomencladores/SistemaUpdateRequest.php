<?php

namespace App\Http\Requests\Nomencladores;

use Illuminate\Foundation\Http\FormRequest;

class SistemaUpdateRequest extends FormRequest
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
            'name'=>'required|unique:nm_sistemas,name,'.$this->nmSistema->id
        ];
    }

    public function attributes()
    {
        return ['name'=>'Sistema Operativo'];
    }
}
