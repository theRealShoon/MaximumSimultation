/// @description Insert description here
// You can write your code in this editor
var change = keyboard_check_released(ord("E"));
switch(inventoryState)
{
	case 0:
		if (change)
		{
		inventoryState = MidGameUsage.civilians;
		}
		break;
	case 1:
		break;
	case 2:
		if (change)
		{
		inventoryState = MidGameUsage.helicopter;
		}
		break;
	case 3:
		break;

}
