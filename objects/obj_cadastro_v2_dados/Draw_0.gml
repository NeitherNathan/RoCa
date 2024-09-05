draw_self();
var _target = inst_cadastro_v2_nome.id;
switch (info)
{
	case "Nome":        _target = inst_cadastro_v2_nome.id;        break;
	case "Nascimento":  _target = inst_cadastro_v2_nascimento.id;  break;
	case "Cidade":      _target = inst_cadastro_v2_cidade.id;      break;
	case "Estado":      _target = global.cadastro_estado;          break;
	case "Telefone":    _target = inst_cadastro_v2_telefone.id;    break;
	case "Email":       _target = inst_cadastro_v2_email.id;       break;
	case "Responsavel": _target = inst_cadastro_v2_responsavel.id; break;
	case "Parentesco":  _target = inst_cadastro_v2_parentesco.id; break;
}
if (mensagem_erro != "")
{
	draw_set_color(c_red);
	draw_set_font(fnt_luckiest_guy_16);
	draw_set_valign(fa_middle);
	if (xstart < room_width / 2)
	{
		draw_set_halign(fa_right);
		draw_text_ext(bbox_left - 100, y + 10, mensagem_erro, -1, 400);
	}
	else
	{
		draw_set_halign(fa_left);
		draw_text_ext(bbox_right + 200, y + 10, mensagem_erro, -1, 400);
	}
}
draw_set_color(global.cor_azul);
draw_set_font(fnt_luckiest_guy_24);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
switch (info)
{
	case "Estado": draw_text(bbox_left, bbox_top - 25, "ESTADO");           break;
	case "Termo":  draw_text(bbox_left, bbox_top - 25, "TERMO");            break;
	default:       draw_text(bbox_left, bbox_top - 25, _target.texto_info); break;
	
}
draw_set_color(c_black);
draw_set_font(fnt_luckiest_guy_24);
var _texto_final = "";
switch (info)
{
	case "Estado":
		if (global.cadastro_estado != noone)
		{
			_texto_final = global.cadastro_estado.nome;
		}
		break;
		
	case "Telefone":
		var _texto_mascara_alternativa = "(00) 00000-0000";
		var _texto_mascara = "(00) 00000-0000";
		if (string_length(_target.texto_input) <= string_length(string_digits(_texto_mascara_alternativa)))
		{
			_texto_final = texto_aplicar_mascara(_target.texto_input, _texto_mascara_alternativa, false);
		}
		else
		{
			_texto_final = texto_aplicar_mascara(_target.texto_input, _texto_mascara, false);
		}
		break;
		
	case "Termo":
		if (inst_cadastro_v2_termo_aceitar.is_on)
		{
			_texto_final = "ACEITO";
		}
		else
		{
			_texto_final = "NÃO ACEITO";
		}
		break;
		
	default:
		if (object_get_name(_target.object_index) == object_get_name(obj_leads_input))
		{
			_texto_final = _target.texto_input;
		}
		else
		{
			// Feather disable once GM1041
			_texto_final = texto_aplicar_mascara(_target.texto_input, _target.texto_mascara, false);
		}
		break;
}
/*if (info != "Estado")
{
	if (object_get_name(_target.object_index) == object_get_name(obj_leads_input))
	{
		_texto_final = _target.texto_input;
	}
	else
	{
		// Feather disable once GM1041
		_texto_final = texto_aplicar_mascara(_target.texto_input, _target.texto_mascara, false);
	}
}
else if (global.cadastro_estado != noone)
{
	_texto_final = global.cadastro_estado.nome;
}*/
var _texto_grande = false;
while (string_width(_texto_final) > sprite_width - 50)
{
	_texto_final = string_copy(_texto_final, 1, string_length(_texto_final) - 1);
	_texto_grande = true;
}
if (_texto_grande)
{
	_texto_final += "...";
}
draw_text(bbox_left + 10, y + 10, _texto_final);