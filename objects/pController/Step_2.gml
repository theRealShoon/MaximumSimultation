/// @description Change State
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
		inventoryState = MidGameUsage.zombies;
		}
		break;
	case 3:
		if (change)
		{
		inventoryState = MidGameUsage.click;
		}
		break;
	case 4:
		if (change)
		{
		inventoryState = MidGameUsage.helicopter;
		}
		break;

}
