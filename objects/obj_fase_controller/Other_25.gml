/// @description Criar prefab

var _lista_sequence = noone;
var _y_offset = 0;
switch (room)
{
	case rm_fase:
		switch (fase_index)
		{
			case 0:
				_y_offset = 150;
				if (fase_progresso == 0 || fase_progresso == 1)
				{
					_lista_sequence = 
					[
						seq_fase_01_modulo_01,
						seq_fase_01_modulo_02,
						seq_fase_01_modulo_03,
						seq_fase_01_modulo_04,
						seq_fase_01_modulo_05
					];
				}
				else
				{
					_lista_sequence = 
					[
						seq_fase_01_modulo_06,
						seq_fase_01_modulo_07,
						seq_fase_01_modulo_08,
						seq_fase_01_modulo_09,
						seq_fase_01_modulo_10,
						seq_fase_01_modulo_11,
						seq_fase_01_modulo_12,
						seq_fase_01_modulo_13
					];
				}
				break;
		
			case 1:
				_y_offset = 150;
				if (fase_progresso == 0 || fase_progresso == 1)
				{
					_lista_sequence = 
					[
						seq_fase_02_modulo_01,
						seq_fase_02_modulo_02,
						seq_fase_02_modulo_03,
						seq_fase_02_modulo_04,
						seq_fase_02_modulo_05
					];
				}
				else
				{
					_lista_sequence = 
					[
						seq_fase_02_modulo_06,
						seq_fase_02_modulo_07,
						seq_fase_02_modulo_08,
						seq_fase_02_modulo_09,
						seq_fase_02_modulo_10,
						seq_fase_02_modulo_11,
						seq_fase_02_modulo_12,
						seq_fase_02_modulo_13
					];
				}
				break;
		}
		break;
		
	case rm_fase_03:
		_y_offset = -50;
		_lista_sequence = 
		[
			seq_fase_03_modulo_01,
			seq_fase_03_modulo_02,
			seq_fase_03_modulo_03,
			seq_fase_03_modulo_04,
			seq_fase_03_modulo_05,
			seq_fase_03_modulo_06
		];
		break;
}
var _layer = layer_get_id("Assets_Prefab");
ultimo_prefab = layer_sequence_create(_layer, room_width * 2, (room_height / 2) + _y_offset, _lista_sequence[irandom(array_length(_lista_sequence) - 1)]);
//show_debug_message("Criando prefab");