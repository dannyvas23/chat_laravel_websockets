<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Chat;

class ChatController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth'); // Para que permita autenticarse y no acceder sin permiso a la vista

    }

	public function chat_with(User $user){
        // Primero recuperamos al usuario que realiza la solicitud
        $user_a = auth()->user(); //Para  saber si esta autentificado el usuario.
        $user_b = $user; // Usuario con el que deseamos chatear
        
        // Vamos a recuperar la sala de chat del usuario a que tambien tenga al usuario b
        //Encontrar la sala de chat, wherehas busca las relaciones de muchos a muchos (se pasa la relacion)  
        $chat = $user_a->chats()->whereHas('users', function ($q) use ($user_b)  {
            // Aquí buscamos la relación con el usuario b
            $q -> where('chat_user.user_id', $user_b->id); //Busca la relacion en tabla chat_user el id del usuario logeado con el usuario q quiere chatear(solo se pasa el id del usuario con el q se va a chatear)
        }) -> first();

        // Si la sala no existe debemos crearla 
        if(!$chat){
            $chat = \App\Models\Chat::create([]);// Se crea nueva sala de chat(solo se crea el id) -> Mala implementacion
            $chat -> users()->sync([$user_a->id, $user_b->id]);

        }

        return redirect()->route('chat.show', $chat);
    }

	public function show(Chat $chat){

        //Buscar si la sala de chat contiene al usuario identificado, sino lo contiene pasa el error 403
        abort_unless($chat->users->contains(auth()->id()), 403); //Aborta la conexion excepto si cumple la condicion del primer parametro
        return view('chat', [
            'chat' => $chat
        ]);
    }

	public function get_users(Chat $chat)
	{

		$users = $chat->users;

		return response()->json([
			'users' => $users
		]);

	}

	public function get_messages(Chat $chat)
	{

		$messages = $chat->messages()->with('user')->get(); //user es la relacion 

		return response()->json([
			'messages' => $messages
		]);

	}

}
