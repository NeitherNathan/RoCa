/// @description Pausar Ima e Escudo

if (ima == true){
tempoima = alarm_get(1);
alarm[1] = -1;
estavacomima = true;
show_debug_message("ESTAVA COM IMA");
}
if (escudo == true){
tempoescudo = alarm_get(2);
alarm[2] = -1;
estavacomescudo = true;
show_debug_message("ESTAVA COM ESCUDO")
}
if (escudo == false && ima ==false){
show_debug_message("ESTAVA COM nada")
}

show_debug_message("teste inferno")