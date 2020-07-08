/// @description Do machines think?
if (HP<1)
{
instance_destroy();//Plan on having an explosion, but this works for now
}
//No more people
if state == HelicopterAction.think
{
	if (currentLoad == capacity)
	{
		state = HelicopterAction.depart;
	}
}

if (state == HelicopterAction.depart)
{
global.saved += currentLoad
instance_create_depth(x,y,depth,paHelicopterDepart);
instance_destroy();
}