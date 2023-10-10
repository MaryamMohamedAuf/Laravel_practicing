<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class authController extends Controller
{
    public function register(){
        return view('register');
 
   }

public function postregister(Request $re){
//dd($re);
   $val=$re->validate([
   'name' =>'required',
   'age' =>'required',
   'phone' =>'required', 
]);
//dd($val);

  //$users= users :: create($val);
  $users=new user($val);
  $users->name= $re->name;
  $users->age= $re->age;
  $users->phone= $re->phone;
  $users->st= $re->st;
  $users->sdesc= $re->sdesc;
  $users->price= $re->price;
     $users->save();
   //dd($users);
}
public function login()
{
   return view('login');
}
   public function postlogin(Request $request)
   {
     $r=$request->only("name","phone");
    
     if(Auth::attempt($r))
     { 
      return redirect('home');
   }
     else
   { 
      return redirect('login');
   }

   }
   public function logout()
   {
      Auth::logout();
      return redirect('login');
    }
   public function show()
    {
       $data=DB::table('users')->get();
       return response()->json($data);
      //return $data;
    }
}
//  try 
    //{
     //   Auth::attempt($r);
    //}
    //  catch(\Exception $e)
    //{
    //     return $e;
    //}