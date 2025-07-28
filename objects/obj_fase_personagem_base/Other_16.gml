/// @description Despausa e Vê se tem Powerup rodano
// Você pode escrever seu código neste editor

 if(estavacomima == true) 
{
alarm[1] = tempoima + 180;
show_debug_message(tempoima);
estavacomima = false;
}
 if(estavacomescudo == true)
{
alarm[2] = tempoescudo + 180;
show_debug_message(tempoescudo);
estavacomescudo = false;
}
 if(estavacomescudo == false && estavacomima == false){
show_debug_message("despauso sem nada")
}

show_debug_message("teste inferdasddasasdasdo")