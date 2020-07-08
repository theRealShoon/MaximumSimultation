/// @description Stat Info
var darkgreen = make_color_rgb(72,112,72)

if (statinfo == 1)
{
	draw_set_color(darkgreen);
	draw_rectangle(0,0,450,768, false);
	draw_set_color(c_white);
	draw_text(10,0,"Health: " + string(HP));
	switch(state)
	{
		case 0:
			draw_text(10,64,"Action State: Thinking")
			break;
		case 1:
			draw_text(10,64,"Action State: Wandering")
			break;
		case 2:
			draw_text(10,64,"Action State: Thinking where to wander to")
			break;
		case 3:
			draw_text(10,64,"Action State: Considering wandering")
			break;
		case 4:
			draw_text(10,64,"Action State: Chasing a civilian")
			break;
		case 5:
			draw_text(10,64,"Action State: Running towards Helicopter")
			break;
	}
}