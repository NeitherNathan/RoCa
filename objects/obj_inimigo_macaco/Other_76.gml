if (event_data[? "event_type"] == "sprite event") // or you can check "sprite event"
{
	if (layer_instance_get_instance(event_data[?"element_id"]) == id) 
	{
	    switch (event_data[? "message"])
	    {
	        case "Pular":
		        velocidade_y = -forca_pulo;
				//show_debug_message("Pular");
				//show_debug_message(string(image_index));
	        break;
	    }
	}
}