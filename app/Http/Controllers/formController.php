<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


use Cookie;
class formController extends Controller
{
    public function load(Request $request) {
        $name = $request->cookies->get('name');
        $email = $request->cookies->get('email');
        $birthday = $request->cookies->get('birthday');
        $theme = $request->cookies->get('theme');
        $question = $request->cookies->get('question');

        return view('form');
    }
    public function submit(Request $request) {
           Cookie::queue(Cookie::forget('name'));
           Cookie::queue(Cookie::forget('email'));
           Cookie::queue(Cookie::forget('birthday'));
           Cookie::queue(Cookie::forget('theme'));
           Cookie::queue(Cookie::forget('question'));

        $rules = [
            'name' => 'required|max:100|min:5',
            'email' => 'email:rfc,dns|required|max:319|min:5',
            'gender' => 'required',
            'consent' => 'required',
            'birthday' => 'required|date|before:yesterday',
            'theme' => 'required|min:5|alpha',
            'question' => 'string|required|max:400|min:5',
        ];
        $username = $request->input('name');
        $email = $request->input('email');
        $gender = $request->input('gender');
        $birthday = $request->input('birthday');
        $theme = $request->input('theme');
        $question = $request->input('question');
        $consent = $request->input('consent');

        $minutes = 5;

        Cookie::queue(Cookie::make('name', $username, $minutes));
        Cookie::queue(Cookie::make('theme', $theme, $minutes));
        Cookie::queue(Cookie::make('question', $question, $minutes));
        Cookie::queue(Cookie::make('birthday', $birthday, $minutes));
        Cookie::queue(Cookie::make('email', $email, $minutes));

        $validateData = $request->validate($rules);
        $consentNumber = 0;
        if($consent == 'on') {
            $consentNumber = 1;
        }
         DB::table('feedback')->insertGetId([
            'mail' => $email,
            'name' => $username,
            'gender' => $gender,
            'birthday' => $birthday,
            'theme' => $theme,
            'message' => $question,
            'consent' => $consentNumber,
        ]);
        return redirect('/form')->with(['success' => true]);
    }


}