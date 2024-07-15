sprite_ceu = spr_transition_l1_l2_back;
sprite_fundo = spr_transition_l1_l2_middle;
sprite_index = spr_transition_l1_l2_front;
sprite_arvore = spr_transition_l1_l2_tree;
if (global.controller.fase_index == 1)
{
	sprite_ceu = spr_transition_l2_l1_back;
	sprite_fundo = spr_transition_l2_l1_middle;
	sprite_index = spr_transition_l2_l1_front;
	sprite_arvore = spr_transition_l2_l1_tree;
}
mudou_fase = false;
atual_fase_index = global.controller.fase_index;
proxima_fase_index = global.controller.fase_index == 0 ? 1 : 0;