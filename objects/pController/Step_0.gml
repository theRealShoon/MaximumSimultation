/// @description Too lazy to setup controller rn so it gonna be only create
if (inventoryState == MidGameUsage.civilians)
{
	if (mouse_check_button_released(mb_left))
	{
	instance_create_depth(mouse_x,mouse_y,depth,aCivilian);
	}
	
	if (keyboard_check_released(ord("E")))
	{
	inventoryState = MidGameUsage.helicopter;
	}
}

if (inventoryState == MidGameUsage.helicopter)
{
	if (mouse_check_button_released(mb_left))
	{
	createX = 100*7
	instance_create_depth(mouse_x + createX,mouse_y,depth,paHelicopterArrive);
	}
	
	if (keyboard_check_released(ord("E")))
	{
	inventoryState = MidGameUsage.civilians;
	}
}

