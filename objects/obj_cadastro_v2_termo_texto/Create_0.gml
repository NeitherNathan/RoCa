x = lerp(x, xstart + ((7 - inst_cadastro_v2_controller.pagina_atual) * room_width), 1);

arrastar = false;
camera_y_ultimo_frame = noone;
surface_width = 2000;
surface_height = 550;
surface_padding = 20;
surface_surface = surface_create(surface_width - (surface_padding * 2), surface_height - (surface_padding * 2));
texto = carregar_arquivo_de_texto("termo.txt");
texto_height = 0;
texto_y = 0;
image_xscale = surface_width / 32;
image_yscale = surface_height / 32;
xstart = (room_width / 2) - (surface_width / 2);
y = 250;