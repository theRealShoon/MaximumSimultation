/// @description Little death count can't hurt
if instance_exists(aCivilian)
{
	var count = instance_number(aCivilian);
	draw_text(0,10,"Civilians alive: " + string(count));
}
else
{
	draw_text(0,10,"Civilians alive: 0");
}