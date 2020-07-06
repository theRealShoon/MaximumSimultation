/// @description Little death count can't hurt
draw_set_color(c_white)

if instance_exists(aCivilian)
{
	var count = instance_number(aCivilian);
	draw_text(0,10,"Civilians alive: " + string(count));
}
else
{
	draw_text(0,10,"Civilians alive: 0");
}
draw_text(0,30,"Civilians saved: " + string(global.saved));

if (inventoryState == MidGameUsage.helicopter)
{
draw_text(0,700,"Helicopter")
}

if (inventoryState == MidGameUsage.civilians)
{
draw_text(0,700,"Civilian")
}

if (inventoryState == MidGameUsage.click)
{
draw_text(0,700,"Click")
}

if (inventoryState == MidGameUsage.zombies)
{
draw_text(0,700,"Zombie")
}