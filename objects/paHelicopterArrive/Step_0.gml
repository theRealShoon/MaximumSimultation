/// @description Go toward arrival position
move_towards_point(arrivalPos,y,10);

if (x == arrivalPos)
{
instance_create_depth(x,y,depth,paHelicopterHover);
instance_destroy();
}