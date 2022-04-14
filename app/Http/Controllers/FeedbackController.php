<?php

namespace App\Http\Controllers;

use App\Models\Feedback;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FeedbackController extends Controller
{
    public function feedback(Request $request)
    {
        $name = $request->get('name');
        $email = $request->get('email');      
        $phone = $request->get('phone');
        $text = $request->get('text');
        if($request->get('city') == 1) {
            $city = 'Алматы';
        }
        if($request->get('city') == 2) {
            $city = 'Нур-Султан';
        }
        // if($request->get('city') == 2) {
        //     $city = 'Тараз';
        // }
        // if($request->get('city') == 3) {
        //     $city = 'Шымкент';
        // }
        $to = "studio@duende.kz";
        $subject = "Заявка с сайта finreview.kz";
        $sendfrom   = "no-reply@finreview.kz";
        $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
        $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

        $message = "
        $subject<br>
        <b>Имя:</b> $name <br>
        <b>Email:</b> $email <br>
        <b>Город:</b> $city <br>
        <b>Телефон:</b> $phone <br>
        <b>Сообщения:</b> $text <br>";

        $send = mail($to, $subject, $message, $headers);
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false], 400);
        }
        
        if ($send)
        { 
            $feedback = new Feedback();
            $feedback->name = $request->name;
            $feedback->email = $request->email;
            $feedback->city = $city;
            $feedback->phone = $request->phone;
            $feedback->text = $request->text;
            $feedback->save();
        }

        return response()->json(['success' => true], 200);
    }
}
