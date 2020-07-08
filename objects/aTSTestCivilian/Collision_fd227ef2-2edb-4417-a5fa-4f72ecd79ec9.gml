/// @description Dude help me in!
var helicopter = instance_nearest(x,y,paHelicopterHover);
if (helicopter.currentLoad<helicopter.capacity)
{
instance_destroy();
}
else
{
//Nothing, just die
}
