/// @description State actions

if (inventoryState == MidGameUsage.civilians)
{
	if (mouse_check_button_released(mb_left) && (tilemap_get_at_pixel(COLLISIONTS,mouse_x,mouse_y)==1))
	{
	instance_create_depth(mouse_x,mouse_y,depth - 1,aCivilian);
	}
}

if (inventoryState == MidGameUsage.helicopter)
{
	if (mouse_check_button_released(mb_left))
	{
	createX = 100*7
	instance_create_depth(mouse_x + createX,mouse_y,depth - 1,paHelicopterArrive);
	}
	
}

if (inventoryState == MidGameUsage.zombies)
{
	if (mouse_check_button_released(mb_left))
	{
	instance_create_depth(mouse_x,mouse_y,depth - 1,aZombie)
	}
}