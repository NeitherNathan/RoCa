global.adereco_alien_comprado = false;
global.adereco_alien_equipado = false;
global.adereco_droid_comprado = false;
global.adereco_droid_equipado = false;
global.adereco_fada_comprado = false;
global.adereco_fada_equipado = false;
global.adereco_halo_comprado = false;
global.adereco_halo_equipado = false;
global.adereco_slime_comprado = false;
global.adereco_slime_equipado = false;
global.admob_menu_proxima_recompenca = "vida_extra";
global.admob_menu_videos_assistidos = 1;
global.cadastro_estado = noone;
global.cadastro_feito = false;
global.cadastro_paginas = 8;
global.cadastro_recompenca = 150;
global.cenario_width = 1440;
global.controller = noone;
global.cor_azul = make_color_rgb(21, 94, 116);
global.debug = false;
global.distancia_ultima_corrida = 0;
global.fase_reiniciar = false;
global.fase_room_atual = noone;
global.loja_aba_aberta = 0;
global.loja_skin_x_offset = 0;
global.moedas_coletadas = 0;
global.moedas_coletadas_ultima_corrida = 0;
global.monetizacao_pronto = false;
global.mostrar_feedback_cadastro = false;
global.personagem_image_index = 0;
global.personagem_scale = 1;
global.personagem_sprite_index = spr_roca_standard_ro_run;
global.personagem_x = 0;
global.personagem_y = 0;
global.pontuacao_recorde = 0;
global.powerup_vida_extra = 5;
global.powerup_ima = 5;
global.powerup_escudo = 5;
global.quiz = 
[
	{ // 01
		pergunta : "Você sabe o que é cárie?",
		respostas : 
		[
			"É um alimento",
			"É um brinquedo",
			"É uma doença que ataca e estraga nossos dentes"
		],
		resposta_correta_index : 2
	},
	{ // 02
		pergunta : "Como sei se tenho cárie?",
		respostas : 
		[
			"Visitando o dentista",
			"Olhando no espelho",
			"Mostrando para os pais"
		],
		resposta_correta_index : 0
	},
	{ // 03
		pergunta : "O que causa a cárie?",
		respostas : 
		[
			"Não escovar os dentes após as refeições",
			"Comer muito doce",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 04
		pergunta : "Como faço para prevenir a cárie?",
		respostas : 
		[
			"Escovando os dentes após as refeições",
			"Diminuindo a quantidade de consumo de doces",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 05
		pergunta : "O que sinto e vejo quando tenho cárie?",
		respostas : 
		[
			"Dor ao comer ou beber frio, quente ou doce",
			"Dor ao morder e buracos nos dentes",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 06
		pergunta : "O que causa doença na gengiva?",
		respostas : 
		[
			"Escovar os dentes",
			"Não higienizar a boca",
			"Diminuir o consumo de doce"
		],
		resposta_correta_index : 1
	},
	{ // 07
		pergunta : "Por quanto tempo e quantas vezes devo escovar os dentes?",
		respostas : 
		[
			"2 minutos e 3 vezes ao dia",
			"10 minutos e 1 vez ao dia",
			"10 segundos e 1 vez ao dia"
		],
		resposta_correta_index : 0
	},
	{ // 08
		pergunta : "Quem faz parte da Equipe que cuida dos dentes?",
		respostas : 
		[
			"Cárie, doce e mau comportamento",
			"Dentista, Assistente do dentista e a secretária",
			"Bombeiro, Policia e o Carteiro"
		],
		resposta_correta_index : 1
	},
	{ // 09
		pergunta : "Com quantos anos devo começar ir ao Dentista?",
		respostas : 
		[
			"Só quando ficar adulto",
			"Antes de nascer os primeiros dentes",
			"Só quando ficar adolescente"
		],
		resposta_correta_index : 1
	},
	{ // 10
		pergunta : "Quando devo usar enxaguante bucal?",
		respostas : 
		[
			"Após usar fio dental e escovar os dentes",
			"Antes de escovar os dentes",
			"Antes de fazer as refeições"
		],
		resposta_correta_index : 0
	},
	{ // 11
		pergunta : "Por que devo usar fio dental?",
		respostas : 
		[
			"Remove a sujeira aonde a escova não consegue limpar",
			"Não precisa usar",
			"Limpa igual a escova dental"
		],
		resposta_correta_index : 0
	},
	{ // 12
		pergunta : "O que é o flúor?",
		respostas : 
		[
			"É um composto químico que previne a cárie dental",
			"É seguro quando usado nas doses recomendadas pelo dentista",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 13
		pergunta : "O que causa mau hálito?",
		respostas : 
		[
			"Ficar sem fazer atividade física",
			"Falta de limpeza da boca",
			"Usar o fio dental"
		],
		resposta_correta_index : 1
	},
	{ // 14
		pergunta : "O que causa dentes sensíveis?",
		respostas : 
		[
			"Cárie dentária",
			"Raiz do dente exposta",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 15
		pergunta : "O que devo fazer se quebrar um dente?",
		respostas : 
		[
			"Jogar o dente fora",
			"Limpá-lo com água, colocar em um copo com leite e ir ao dentista",
			"Ficar sem o dente"
		],
		resposta_correta_index : 1
	},
	{ // 16
		pergunta : "Como saber se tenho doença na gengiva?",
		respostas : 
		[
			"Gengiva inchada, vermelha e sangrando",
			"Mau hálito que não desaparece",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 17
		pergunta : "O que o flúor faz na nossa boca?",
		respostas : 
		[
			"Fortalece o esmalte do dente",
			"Previne a cárie",
			"Todas as alternativas estão corretas"
		],
		resposta_correta_index : 2
	},
	{ // 18
		pergunta : "Por que devo ir ao Dentista?",
		respostas : 
		[
			"Para passear",
			"Para prevenir e tratar doenças na boca",
			"Para não ir na escola"
		],
		resposta_correta_index : 1
	},
	{ // 19
		pergunta : "Quando é a melhor hora para comer doce?",
		respostas : 
		[
			"Após o almoço",
			"A qualquer hora",
			"Depois de escovar os dentes"
		],
		resposta_correta_index : 0
	},
	{ // 20
		pergunta : "Quantas vezes devo ir ao Dentista no ano?",
		respostas : 
		[
			"A cada 2 anos",
			"De 4 a seis meses",
			"Só quando o dente doer"
		],
		resposta_correta_index : 1
	}
];
global.quiz_habilitado = true;
global.quiz_ultima_resposta_correta = false;
global.skin_selecionada_index = 0;
//                          0     1     2      3      4      5      6      7      8      9      10     11     12     13     14     15
global.skin_desbloqueada = [true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
global.skins = 
[
	{ // 00
		correr : spr_roca_standard_ro_run,
		pular  : spr_roca_standard_ro_jump,
		voar   : spr_roca_standard_ro_fly,
		is_ca  : false,
		nome   : "Ro"
	},
	{ // 01
		correr : spr_roca_standard_ca_run,
		pular  : spr_roca_standard_ca_jump,
		voar   : spr_roca_standard_ca_fly,
		is_ca  : true,
		nome   : "Ca"
	},
	{ // 02
		correr : spr_roca_variation_03_ro_run,
		pular  : spr_roca_variation_03_ro_jump,
		voar   : spr_roca_variation_03_ro_fly,
		is_ca  : false,
		nome   : "Ro 1"
	},
	{ // 03
		correr : spr_roca_variation_01_ca_run,
		pular  : spr_roca_variation_01_ca_jump,
		voar   : spr_roca_variation_01_ca_fly,
		is_ca  : true,
		nome   : "Ca 1"
	},
	{ // 04
		correr : spr_roca_variation_02_ro_run,
		pular  : spr_roca_variation_02_ro_jump,
		voar   : spr_roca_variation_02_ro_fly,
		is_ca  : false,
		nome   : "Ro 2"
	},
	{ // 05
		correr : spr_roca_variation_02_ca_run,
		pular  : spr_roca_variation_02_ca_jump,
		voar   : spr_roca_variation_02_ca_fly,
		is_ca  : true,
		nome   : "Ca 2"
	},
	{ // 06
		correr : spr_roca_variation_04_ro_run,
		pular  : spr_roca_variation_04_ro_jump,
		voar   : spr_roca_variation_04_ro_fly,
		is_ca  : false,
		nome   : "Ro 3"
	},
	{ // 07
		correr : spr_roca_variation_03_ca_run,
		pular  : spr_roca_variation_03_ca_jump,
		voar   : spr_roca_variation_03_ca_fly,
		is_ca  : true,
		nome   : "Ca 3"
	},
	{ // 08
		correr : spr_roca_variation_01_ro_run,
		pular  : spr_roca_variation_01_ro_jump,
		voar   : spr_roca_variation_01_ro_fly,
		is_ca  : false,
		nome   : "Ro 4"
	},
	{ // 09
		correr : spr_roca_variation_04_ca_run,
		pular  : spr_roca_variation_04_ca_jump,
		voar   : spr_roca_variation_04_ca_fly,
		is_ca  : true,
		nome   : "Ca 4"
	},
	{ // 10
		correr : spr_roca_variation_05_ro_run,
		pular  : spr_roca_variation_05_ro_jump,
		voar   : spr_roca_variation_05_ro_fly,
		is_ca  : false,
		nome   : "Ro 5"
	},
	{ // 11
		correr : spr_roca_variation_05_ca_run,
		pular  : spr_roca_variation_05_ca_jump,
		voar   : spr_roca_variation_05_ca_fly,
		is_ca  : true,
		nome   : "Ca 5"
	},
	{ // 12
		correr : spr_roca_spy_ro_run,
		pular  : spr_roca_spy_ro_jump,
		voar   : spr_roca_spy_ro_fly,
		is_ca  : false,
		nome   : "Ro - Espião"
	},
	{ // 13
		correr : spr_roca_spy_ca_run,
		pular  : spr_roca_spy_ca_jump,
		voar   : spr_roca_spy_ca_fly,
		is_ca  : true,
		nome   : "Ca - Espiã"
	},
	{ // 14
		correr : spr_roca_astronaut_ro_run,
		pular  : spr_roca_astronaut_ro_jump,
		voar   : spr_roca_astronaut_ro_fly,
		is_ca  : false,
		nome   : "Ro - Astronauta"
	},
	{ // 15
		correr : spr_roca_astronaut_ca_run,
		pular  : spr_roca_astronaut_ca_jump,
		voar   : spr_roca_astronaut_ca_fly,
		is_ca  : true,
		nome   : "Ca - Astronauta"
	}
];
global.volume = 1;


function carregar_jogo()
{
	ini_open("save.ini");
	global.moedas_coletadas = round(ini_read_real("player", "moedas_coletadas", 0));
	global.pontuacao_recorde = ini_read_real("player", "pontuacao_recorde", 0);
	global.skin_selecionada_index = round(ini_read_real("player", "skin_selecionada", 0));
	global.powerup_escudo = round(ini_read_real("loja", "powerup_escudo", 5));
	global.powerup_ima = round(ini_read_real("loja", "powerup_ima", 5));
	global.powerup_vida_extra = round(ini_read_real("loja", "powerup_vida_extra", 5));
	//global.cadastro_feito = round(ini_read_real("global", "cadastro_feito", false));
	global.quiz_habilitado = round(ini_read_real("global", "quiz_habilitado", false));
	global.admob_menu_proxima_recompenca = ini_read_string("global", "admob_menu_proxima_recompenca", "");
	global.admob_menu_videos_assistidos = round(ini_read_real("global", "admob_menu_videos_assistidos", 1));
	for (var _i = 0; _i < array_length(global.skin_desbloqueada); _i++)
	{
		global.skin_desbloqueada[_i] = round(ini_read_real("loja", "skin_" + string(_i), global.skin_desbloqueada[_i]));
	}
	global.volume = round(ini_read_real("global", "volume", true));
	global.adereco_alien_comprado = round(ini_read_real("loja", "adereco_alien_comprado", 0));	
	global.adereco_alien_equipado = round(ini_read_real("loja", "adereco_alien_equipado", 0));
	global.adereco_droid_comprado = round(ini_read_real("loja", "adereco_droid_comprado", 0));	
	global.adereco_droid_equipado = round(ini_read_real("loja", "adereco_droid_equipado", 0));
	global.adereco_fada_comprado = round(ini_read_real("loja", "adereco_fada_comprado", 0));
	global.adereco_fada_equipado = round(ini_read_real("loja", "adereco_fada_equipado", 0));
	global.adereco_halo_comprado = round(ini_read_real("loja", "adereco_halo_comprado", 0));
	global.adereco_halo_equipado = round(ini_read_real("loja", "adereco_halo_equipado", 0));
	global.adereco_slime_comprado = round(ini_read_real("loja", "adereco_slime_comprado", 0));
	global.adereco_slime_equipado = round(ini_read_real("loja", "adereco_slime_equipado", 0));
	ini_close();
}


function salvar_jogo()
{
	ini_open("save.ini");
	ini_write_real("player", "moedas_coletadas", global.moedas_coletadas);
	ini_write_real("player", "pontuacao_recorde", global.pontuacao_recorde);
	ini_write_real("player", "skin_selecionada", global.skin_selecionada_index);
	ini_write_real("loja", "powerup_escudo", global.powerup_escudo);
	ini_write_real("loja", "powerup_ima", global.powerup_ima);
	ini_write_real("loja", "powerup_vida_extra", global.powerup_vida_extra);
	ini_write_real("global", "cadastro_feito", global.cadastro_feito);
	ini_write_real("global", "quiz_habilitado", global.quiz_habilitado);
	ini_write_string("global", "admob_menu_proxima_recompenca", global.admob_menu_proxima_recompenca);
	ini_write_real("global", "admob_menu_videos_assistidos", global.admob_menu_videos_assistidos);
	for (var _i = 0; _i < array_length(global.skin_desbloqueada); _i++)
	{
		ini_write_real("loja", "skin_" + string(_i), global.skin_desbloqueada[_i]);
	}
	ini_write_real("global", "volume", global.volume);
	ini_write_real("loja", "adereco_alien_comprado", global.adereco_alien_comprado);
	ini_write_real("loja", "adereco_alien_equipado", global.adereco_alien_equipado);
	ini_write_real("loja", "adereco_droid_comprado", global.adereco_droid_comprado);
	ini_write_real("loja", "adereco_droid_equipado", global.adereco_droid_equipado);
	ini_write_real("loja", "adereco_fada_comprado", global.adereco_fada_comprado);
	ini_write_real("loja", "adereco_fada_equipado", global.adereco_fada_equipado);
	ini_write_real("loja", "adereco_halo_comprado", global.adereco_halo_comprado);
	ini_write_real("loja", "adereco_halo_equipado", global.adereco_halo_equipado);
	ini_write_real("loja", "adereco_slime_comprado", global.adereco_slime_comprado);
	ini_write_real("loja", "adereco_slime_equipado", global.adereco_slime_equipado);
	ini_close();
}


enum LOJA_BOTAO_MODO
{
	COMPRAR,
	EQUIPAR,
	EQUIPADO
}