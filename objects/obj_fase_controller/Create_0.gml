global.controller = id;
global.distancia_ultima_corrida = 0;
global.moedas_coletadas_ultima_corrida = 0;

// AQUI PODE AJUSTAR
velocidade = 7.5;
aceleracao = 0.005;
tempo_por_fase = 60 * 30; // A contagem e feita por frames, entao fica 60 multiplicado pelos segundos
limites_velocidade = 
[
	[10, 1],
	[15, 3],
	[20, 5],
	[25, 7],
	[30, 9]
];

dente_distancia_min = room_width * 10;
dente_distancia_max = room_width * 20;


// NAO MUDAR ESTES
fase_index = 0;
fase_progresso = 0;
ultimo_prefab = noone;
limite_velocidade_index = 0;

// Nao apagar
/*if (global.debug)
{
	fase_index = 1;
	fase_progresso = 3;
	tempo_por_fase = 60 * 300;
}*/

if (room == rm_fase)
{
	event_user(2); // Criar dente
	event_user(15); // Criar prefab
	alarm[0] = tempo_por_fase; // Mudar fase
}
else if (room == rm_fase_03)
{
	event_user(15); // Criar prefab
}
// Feather disable once GM1041
layer_sequence_x(ultimo_prefab, room_width * 1.5);