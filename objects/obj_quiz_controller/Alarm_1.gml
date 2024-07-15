/// @description Debug escolher resposta

with (obj_quiz_btn_opcao)
{
	if (resposta_index == global.quiz[global.controller.quiz_index].resposta_correta_index)
	{
		event_perform(ev_mouse, ev_left_press);
	}
}