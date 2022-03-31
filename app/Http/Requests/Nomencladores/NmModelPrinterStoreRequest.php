<?php

namespace App\Http\Requests\Nomencladores;

use App\Repository\NomencladoresRepository;
use Illuminate\Foundation\Http\FormRequest;

class NmModelPrinterStoreRequest extends FormRequest
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
            'name'=>'required|unique:nm_model_printers',
            'cinta_tonners'=>['required']
        ];
    }
}
