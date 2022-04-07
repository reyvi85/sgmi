<?php

namespace App\Http\Requests;

use App\Models\Views\ViewBackup;
use Illuminate\Foundation\Http\FormRequest;

class EntregaBateriasRequest extends FormRequest
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
        $aux = ViewBackup::where('UEB_id', request()->nm_ueb_id)->get();
        return [
            'cantidad'=>'required|integer',
            'numero_inventario'=>['required', 'in:'.$aux->pluck('inventario')->implode(',')]
        ];
    }

    public function messages()
    {
        return [
            'numero_inventario.in'=>"El número de inventario no está asociado a la UEB o no existe"
        ];
    }
}
