/// @description Do zombies think?
if (HP<1)
{
instance_destroy();
}
//Thinking?
if (state == ZombieActions.Think)
{
	if collision_circle(x,y,125,aCivilian,true,true)
	{
		state = ZombieActions.Chase
	}
	
	if collision_circle(x,y,350,paHelicopterHover,true,true)
	{
		state = ZombieActions.ChaseHeli;
	}
	
	if !collision_circle(x,y,125,aCivilian,true,true) && !collision_circle(x,y,350,paHelicopterHover,true,true)
	{
		state = ZombieActions.Roll;
	}
	
}
//Rolls for the chance to wander
if (state == ZombieActions.Roll)
{
var wanderChance = irandom_range(0,100);
	if (wanderChance<50)
	{
	state = ZombieActions.WanderThink;
	}
	else
	{
	state = ZombieActions.Think;
	}
}
if (state == ZombieActions.WanderThink)
{
xTo = x + irandom_range(-100,100);
yTo = y + irandom_range(-100,100);
	if place_free(xTo,yTo)
	{
		state = ZombieActions.Wander;
	}
	else
	{
		state = ZombieActions.Think;
	}
}
if (state == ZombieActions.Wander)
{
mp_potential_step(xTo,yTo,4,true);
direction = point_direction(x,y,xTo,yTo);
	if (x == xTo && y == yTo)
	{
	alarm_set(0,120);
	state = ZombieActions.Think;
	}
}
//Chase civilian
if (state == ZombieActions.Chase)
{
	if collision_circle(x,y,125,aCivilian,true,true)
	{
		if instance_exists(aCivilian)
		{
			var target = instance_nearest(x,y,aCivilian);
			var _x = target.x;
			var _y = target.y;
			move_towards_point(_x,_y,4);
			direction = point_direction(x,y,_x,_y);
		}
	}
	
	if !collision_circle(x,y,125,aCivilian,true,true)
	{
		state = ZombieActions.Think;
	}
}
//Chase Helicopter
if (state == ZombieActions.ChaseHeli)
{
	if collision_circle(x,y,350,paHelicopterHover,true,true)
	{
		if instance_exists(paHelicopterHover)
		{
		var target = instance_nearest(x,y,paHelicopterHover);
		var _x = target.x;
		var _y = target.y;
		move_towards_point(_x,_y,4);
		direction = point_direction(x,y,_x,_y);
		}
	}
	
	if !collision_circle(x,y,350,paHelicopterHover,true,true)
	{
		state = ZombieActions.Think;
	}
}
//Point towards direction
image_angle = direction;