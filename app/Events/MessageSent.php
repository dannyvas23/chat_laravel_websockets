<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast; //Emite a traves de los canales de comunicacion
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class MessageSent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $message;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($message)
    {
        $this->message = $message;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {   
        // No requiere autentificacion ej: PublicChannel
        //Requieren autentificacion

        //PresenceChannel retorna el usuario q esta solicitando escuchar por el canal
        //PrivateChannel no se tiene registro del usuario, solo devuelve true o false
        return new PresenceChannel('chat.' . $this->message->chat_id);  //se define com una ruta( el punto es para pasar varios argumentos q se mande)
                                                                        //El otro punto es para concatenar
    }
}
