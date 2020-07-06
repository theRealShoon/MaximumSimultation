/// @description Do zombies think?
if (HP<1)
{
instance_destroy();
}



if collision_circle(x,y,125,aCivilian,true,true)
{
	if instance_exists(aCivilian)
	{
		var target = instance_nearest(x,y,aCivilian);
		var _x = target.x;
		var _y = target.y;
		move_towards_point(_x,_y,4);
	}
}