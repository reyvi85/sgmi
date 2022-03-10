<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\UserStoreRequest;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usr = User::paginate();
       return view('user', compact('usr'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserStoreRequest $request)
    {
       User::create([
           'name' => $request->name,
           'email' => $request->email,
           'password' => Hash::make($request->password),
           'admin' => $request->admin,
           'dpto' => $request->dpto,
       ]);
       flash('Se creó satisfactoriamente el usuario <strong>'.$request->name.'</strong>')->success()->important();
       return redirect()->route('user.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $data = is_null($request->password)?array(
            'name' => $request->name,
            'email' => $request->email,
            'admin' => $request->admin,
            'dpto' => $request->dpto
        ):array(
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'admin' => $request->admin,
            'dpto' => $request->dpto
        );
        $user->fill($data)->save();
        flash('Se salvaron los datos del usuario <strong>'.$request->name.'</strong>')->success()->important();
        return redirect()->route('user.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        flash('Se ELIMINÓ satisfactoriamente el usuario <strong>'.$user->name.'</strong>')->error()->important();
        return redirect()->route('user.index');
    }
}
