/// @description Do machines think?
if (HP == 0)
{
instance_destroy();//Plan on having an explosion, but this works for now
}
//No more people
if (currentLoad == capacity)
{
state = HelicopterAction.depart;
}