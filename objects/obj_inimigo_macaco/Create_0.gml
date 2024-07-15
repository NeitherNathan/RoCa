event_inherited();
visible = false;
distancia_de_criacao -= global.controller.velocidade;

// AQUI PODE AJUSTAR
gravidade = 0.4;
forca_pulo = 20;


// NAO MUDAR ESTES
velocidade_y = 0;
y_max = room_height - sprite_height;

alarm[0] = 2; // in sequence
image_xscale = -1;
image_index = irandom(image_number);