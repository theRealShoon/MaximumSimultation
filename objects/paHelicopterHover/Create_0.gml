/// @description Birthing Helicopter
enum HelicopterAction{
	arrive,
	think,
	depart,
	playerDepart,
	destroying,

}
state = HelicopterAction.think;
arrivalPos = mouse_x;

capacity = 25;
currentLoad = 0;
HP = 100;