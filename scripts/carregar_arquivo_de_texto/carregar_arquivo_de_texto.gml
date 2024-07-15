/// @desc Carrega um arquivo de texto
/// @param {string} _nome_do_arquivo Nome do arquivo com o formato
/// @returns {string} Texto contido dentro do arquivo
function carregar_arquivo_de_texto(_nome_do_arquivo)
{
	var _texto = "";
	var _arquivo = file_text_open_read(_nome_do_arquivo);
	if (_arquivo != -1)
	{
	    while (!file_text_eof(_arquivo))
	    {
	        _texto += file_text_readln(_arquivo);
	    }
	    file_text_close(_arquivo);
	}
	else
	{
		_texto = "ERRO AO CARREGAR O ARQUIVO: " + _nome_do_arquivo;
		show_debug_message(_texto);
	}
	//show_debug_message(_texto);
	return _texto;
}