/// @description Too lazy to setup controller rn so it gonna be only create
if (mouse_check_button_released(mb_left))
{
createX = 100*7
instance_create_depth(mouse_x + createX,mouse_y,depth,paHelicopterArrive);
}
if (mouse_check_button_released(mb_right))
{
instance_create_depth(mouse_x,mouse_y,depth,aCivilian);
}