/// @description Too lazy to setup controller rn so it gonna be only create
if (mouse_check_button_released(mb_left))
{
instance_create_depth(mouse_x,mouse_y,depth,paHelicopter);
}
if (mouse_check_button_released(mb_right))
{
instance_create_depth(mouse_x,mouse_y,depth,aCivilian);
}