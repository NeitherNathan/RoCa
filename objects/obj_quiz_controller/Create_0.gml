global.controller = id;
quiz_index = irandom(array_length(global.quiz) - 1);
if (global.debug)
{
	alarm[1] = 60; // Debug escolher resposta
}