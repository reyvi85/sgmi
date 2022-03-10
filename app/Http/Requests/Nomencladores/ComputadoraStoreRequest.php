<?php

namespace App\Http\Requests\Nomencladores;

use Illuminate\Foundation\Http\FormRequest;

class ComputadoraStoreRequest extends FormRequest
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
            'nombre'=>'required|unique:computadoras',
            'numero_inventario'=>'required',
            'numero_sello'=>'required|unique:sellos,number',
            'ip'=>'required|ipv4|unique:computadoras',
            'mac'=>array('required', 'regex:/^[a-fA-F0-9-]{17}|[a-fA-F0-9]{12}$/', 'unique:computadoras'),
            'nm_ueb_id'=>'required',
            'nm_departamento_id'=>'required',
            'nm_sistema_id'=>'required',
        ];
    }

    public function attributes()
    {
       return [
           'nombre'=>'Nombre',
           'numero_inventario'=>'# Inventario',
           'numero_sello'=>'# Sello',
           'ip'=>'IP',
           'mac'=>'MAC',
           'nm_ueb_id'=>'UEB',
           'nm_departamento_id'=>'Departamento',
           'nm_sistema_id'=>'Sistema Operativo',
       ];
    }
}
