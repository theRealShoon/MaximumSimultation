/// @description Birthing Helicopter
enum HelicopterAction{
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