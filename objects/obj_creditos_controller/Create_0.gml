arrastar = false;
camera_y_ultimo_frame = noone;
surface_width = 1950;
surface_height = 800;
surface_padding = 20;
surface_surface = surface_create(surface_width - (surface_padding * 2), surface_height - (surface_padding * 2));
//
texto = carregar_arquivo_de_texto("creditos_1.txt");
//creditos_2 = carregar_arquivo_de_texto("creditos_2.txt");
//
texto_height = 0;
texto_y = 0;
image_xscale = surface_width / 32;
image_yscale = surface_height / 32;
xstart = (room_width / 2) - (surface_width / 2);
y = 100;
x = 200;