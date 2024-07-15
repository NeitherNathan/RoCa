function FirebaseREST_firestore_value(value, _key = "")
{
	// https://firebase.google.com/docs/firestore/reference/rest/v1/Value
	var map = ds_map_create();
	if (_key == "")
	{
		if(is_real(value))
		{
			ds_map_add(map,"doubleValue",value);
		}
		else
		{
			ds_map_add(map,"stringValue",value);
		}
	}
	else
	{
		var _timestamp = "";
		switch (_key)
		{
			case "data_cadastro": 
				date_set_timezone(timezone_utc);
				_timestamp = string(current_year);
				_timestamp += "-"
				_timestamp += string(current_month);
				_timestamp += "-";
				_timestamp += string(current_day);
				_timestamp += "T";
				_timestamp += string(current_hour);
				_timestamp += ":";
				_timestamp += string(current_minute);
				_timestamp += ":";
				_timestamp += string(current_second);
				_timestamp += "Z";
				ds_map_add(map, "timestampValue", _timestamp);
				break;
				
			case "data_nascimento": 
				// 2014-10-02T15:01:23Z
				_timestamp = string_copy(value, 5, 4);
				_timestamp += "-";
				_timestamp += string_copy(value, 3, 2);
				_timestamp += "-";
				_timestamp += string_copy(value, 1, 2);
				_timestamp += "T12:00:00Z";
				ds_map_add(map, "timestampValue", _timestamp);
				break;
				
			case "idade": ds_map_add(map,"integerValue",value); break;
			case "nascido_em": ds_map_add(map,"integerValue",value); break;
			default: ds_map_add(map,"stringValue",value); break;
		}
	}
	return map;
}
