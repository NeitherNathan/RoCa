if (other.object_index != obj_fase_dente_quiz)// && 
	//other.object_index != obj_inimigo_carro   && 
	//other.object_index != obj_fase_moeda)
{
	if (other.in_sequence)
	{
		//show_debug_message("FADE: Destruindo sequence || " + object_get_name(other.object_index));
		//var _sequence_id = layer_sequence_exists(layer, other.sequence_instance.elementID);
		if (layer_sequence_exists(other.layer, other.sequence_instance.elementID))
		{
			//show_debug_message("Primeira tentativa de destruir");
			layer_sequence_destroy(other.sequence_instance.elementID);
		}
	}
	else
	{
		instance_destroy(other.id);
	}
}