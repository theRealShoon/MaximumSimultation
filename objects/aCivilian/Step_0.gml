/// @description Civilian Reasoning
//Temp Variables for gun
var offsetX = 2;
var offsetY = 0;
var angle = point_direction(0,0,offsetX,offsetY);
var distance = point_distance(0,0,offsetX,offsetY);
var xPos = x + lengthdir_x(distance, offsetY + angle)
var yPos = y + lengthdir_y(distance, offsetY + angle)
//Says if Civlian is Armed
if (Armed<26)
{
ableToAttack = true;
}
//Conversion to Zombie if you get infection
if (Infection == 100)
{
instance_change(aZombie,ev_create);
}
//Idle State
if (state == CivilianActions.Think)
{
	if collision_circle(x,y,500,paHelicopter,true,true) 
	{
	state = CivilianActions.TowardsHelicopter;
	}
	if (collision_circle(x,y,80,aZombie,true,true) && (ableToAttack == true))
	{
	state = CivilianActions.Attack;
	}
	if (collision_circle(x,y,80,aZombie,true,true) && (ableToAttack == false))
	{
	state = CivilianActions.RunThink
	}
	
	if !collision_circle(x,y,500,paHelicopter,true,true) && !collision_circle(x,y,80,aZombie,true,true)
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
}
//Attack State
if (state == CivilianActions.Attack)
{
	if (alarm_get(0)<1)
	{
		direction = point_direction(x,y,aZombie.x,aZombie.y);
		instance_create_depth(xPos, yPos, depth, aBullet);
		alarm_set(0,30);
		//Makes AI think about next move
		state = CivilianActions.Think;
	}
}
//Think about where to run
if (state == CivilianActions.RunThink)
{
xTo = x + irandom_range(-50,50);
yTo = y + irandom_range(-50,50);
	if place_free(xTo,yTo)
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
move_towards_point(xTo,yTo,3);
direction = point_direction(x,y,xTo,yTo);
	if (x == xTo && y == yTo)
	{
	state = CivilianActions.Think;
	}
}
//Helicopter
if (state == CivilianActions.TowardsHelicopter)
{
direction = point_direction(x,y,paHelicopter.x,paHelicopter.y);
move_towards_point(paHelicopter.x,paHelicopter.y,3.5);
}
//Wander
if (state == CivilianActions.WanderThink)
{
xTo = x + irandom_range(-10,10);
yTo = y + irandom_range(-10,10);
	if place_free(xTo,yTo)
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
move_towards_point(xTo,yTo,3);
direction = point_direction(x,y,xTo,yTo);
alarm_set(1,120)
	if (x == xTo && y == yTo)
	{
	state = CivilianActions.Think;
	}
}
//Face your direction
image_angle = direction;