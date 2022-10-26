<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\MessageSent;

class MessageController extends Controller
{
    
	public function __construct()
	{
		$this->middleware('auth');
	}


	public function sent(Request $request){ //El mensaje q se va a enviar de un chat a otro.
        $message = auth()->user()->messages()->create([ // o se puede utilizar  $request->user()->  //Se accede al modelo
            'content' => $request->message,
            'chat_id' => $request->chat_id
        ]) -> load('user');  //Cargar el usuario, dentro del mensaje tendra el objeto del usuario

        broadcast(new MessageSent($message)) -> toOthers(); // Para mandar el mensaje a otros

        return $message;
    }

}
