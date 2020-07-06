/// @description Draw Stats
var darkblue = make_color_rgb(72,72,112)

if (statinfo == 1)
{
	draw_set_color(darkblue);
	draw_rectangle(0,0,450,768, false);
	draw_set_color(c_white);
	draw_text(10,0,"Health: " + string(HP));
	draw_text(10,32,"Infection: " + string(Infection));
	switch(state)
	{
		case 0:
			draw_text(10,64,"Action State: Thinking")
			break;
		case 1:
			draw_text(10,64,"Action State: Moving")
			break;
		case 2:
			draw_text(10,64,"Action State: Wandering")
			break;
		case 3:
			draw_text(10,64,"Action State: Thinking where to wander to")
			break;
		case 4:
			draw_text(10,64,"Action State: Attacking")
			break;
		case 5:
			draw_text(10,64,"Action State: Running towards Helicopter")
			break;
		case 6:
			draw_text(10,64,"Action State: Thinking where to run to")
			break;
		case 7:
			draw_text(10,64,"Action State: Running away")
			break;
		case 8:
			draw_text(10,64,"Action State: Considering wandering")
			break;
	}
	draw_text(10,96,fname + " " + lname);
	if (Armed<26)
	{
	draw_text(10,124,"Is armed: True");
	}
	else
	{
	draw_text(10,124,"Is armed: False");
	}
}