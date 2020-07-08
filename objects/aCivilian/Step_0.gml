/// @description Civilian Reasoning
//Temp Variables for gun
var offsetX = 2;
var offsetY = 0;
var angle = point_direction(0,0,offsetX,offsetY);
var distance = point_distance(0,0,offsetX,offsetY);
var xPos = x + lengthdir_x(distance, offsetY + angle)
var yPos = y + lengthdir_y(distance, offsetY + angle)
//Stat Info
if collision_rectangle(x-2,y-2,x+2,y+2,pCursor,true,true) && mouse_check_button_released(mb_left)
{
	if (pController.inventoryState == MidGameUsage.click)
	{
	statinfo = 1;
	}
}
if !collision_rectangle(x-2,y-2,x+2,y+2,pCursor,true,true) && mouse_check_button_released(mb_left)
{
	statinfo = 0;
}


//Says if Civlian is Armed
if (Armed<26)
{
ableToAttack = true;
}

//Idle State
if (state == CivilianActions.Think)
{
	if collision_circle(x,y,350,paHelicopterHover,true,true) 
	{
	state = CivilianActions.TowardsHelicopter;
	}
	if (collision_circle(x,y,100,aZombie,true,true) && (ableToAttack == true))
	{
	state = CivilianActions.Attack;
	}
	if (collision_circle(x,y,100,aZombie,true,true) && (ableToAttack == false))
	{
	state = CivilianActions.RunThink
	}
	
	if !collision_circle(x,y,350,paHelicopterHover,true,true) && !collision_circle(x,y,80,aZombie,true,true)
	{
	state = CivilianActions.Roll
	}

}
//Roll
if (state == CivilianActions.Roll)
{
var wanderChance = irandom_range(0,100);
	if (wanderChance<21) && (alarm_get(1)<1)
	{
	state = CivilianActions.WanderThink;
	}
	else
	{
	state = CivilianActions.Think;
	}
}
//Attack State
if (state == CivilianActions.Attack)
{
	if (alarm_get(0)<1) && instance_exists(aZombie)
	{
		var zombieTarget = instance_nearest(x,y,aZombie);
		direction = point_direction(x,y,zombieTarget.x,zombieTarget.y);
		instance_create_depth(xPos, yPos, depth, aBullet);
		alarm_set(0,30);
		//Makes AI think about next move
		state = CivilianActions.Think;
	}
}
//Think about where to run
if (state == CivilianActions.RunThink)
{
xTo = x + irandom_range(-100,100);
yTo = y + irandom_range(-100,100);
	if (tilemap_get_at_pixel(COLLISIONTS,xTo,yTo)==1)
	{
	state = CivilianActions.Run
	}
	else
	{
	state = CivilianActions.Think;
	}
}
//Run
if (state == CivilianActions.Run)
{
mp_potential_step(xTo,yTo,3,true);
direction = point_direction(x,y,xTo,yTo);
	if (x == xTo && y == yTo)
	{
	state = CivilianActions.Think;
	}
}
//Helicopter
if (state == CivilianActions.TowardsHelicopter)
{
	if (instance_exists(paHelicopterHover))
	{
	var nearbyHeli = instance_nearest(x,y,paHelicopterHover)
	direction = point_direction(x,y,nearbyHeli.x,nearbyHeli.y);
	mp_potential_step_object(nearbyHeli.x,nearbyHeli.y,3.5,aWall);
	}
	else
	{
	state = CivilianActions.Think;
	}
}
//Wander
if (state == CivilianActions.WanderThink)
{
xTo = x + irandom_range(-10,10);
yTo = y + irandom_range(-10,10);
	if (tilemap_get_at_pixel(COLLISIONTS,xTo,yTo)==1)
	{
	state = CivilianActions.Wander
	}
	else
	{
	state = CivilianActions.Think;
	}
}
if (state == CivilianActions.Wander)
{
mp_potential_step(xTo,yTo,3,true)
direction = point_direction(x,y,xTo,yTo);
	if (x == xTo && y == yTo)
	{
	alarm_set(1,120)
	state = CivilianActions.Think;
	}
}
//Face your direction
image_angle = direction;
//Conversion to Zombie if you get infection
if (Infection>99)
{
var infected = instance_change(aZombie,true);
	with (infected)
	{
	state = ZombieActions.Think;
	}
}