/// @description Validar informacoes

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
}
mensagem_erro = "";
switch (info)
{
	case "Nome":
	case "Cidade":
		if (string_length(_target.texto_input) == 0)
		{
			mensagem_erro = "CAMPO OBRIGATÓRIO";
		}
		break;
		
	// NÃO APAGAR
	case "Nascimento":
		if (_target.texto_input == "" || _target.texto_input == "0" || _target.texto_input == "00")
		{
			mensagem_erro = "CAMPO OBRIGATÓRIO";
		}
		/*if (string_length(_target.texto_input) < 8)
		{
			mensagem_erro = "DATA INCOMPLETA";
		}
		else
		{
			mensagem_erro = _target.mensagem;
		}*/
		break;
	
	case "Estado":
		if (_target == noone)
		{
			mensagem_erro = "CAMPO OBRIGATÓRIO";
		}
		break;
		
	case "Telefone":
		if (string_length(_target.texto_input) < 14)
		{
			mensagem_erro = "TELEFONE INCOMPLETO";
		}
		break;
		
	case "Email":
		var _arroba_index = string_pos("@", _target.texto_input);
		if (_arroba_index == 0)
		{
			mensagem_erro = "E-MAIL INCOMPLETO";
		}
		else
		{
			var _ponto_com_index = string_pos_ext(".com", _target.texto_input, _arroba_index);
			if (_ponto_com_index == 0)
			{
				mensagem_erro = "E-MAIL INCOMPLETO";
			}
		}
		break;
		
	case "Responsavel":
		var _idade = 0;
		if (inst_cadastro_v2_nascimento.texto_input != "")
		{
			_idade = int64(inst_cadastro_v2_nascimento.texto_input)
		}
		if (string_length(_target.texto_input) == 0 && _idade < 18)
		{
			mensagem_erro = "OBRIGATÓRIO PARA MENORES DE 18 ANOS";
		}
		break;
		
	case "Termo":
		if (!inst_cadastro_v2_termo_aceitar.is_on)
		{
			mensagem_erro = "TERMO NÃO ACEITO";
		}
		break;
}
informacao_validada = mensagem_erro == "";