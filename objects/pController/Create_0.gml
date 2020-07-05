/// @description Variables
global.saved = 0;

enum Activity{
	unactive,
	active,
}

enum MidGameUsage {
	helicopter,
	bombard,
	civilians,//Temporary
	zombies,//Temporary
}

inventoryState = MidGameUsage.helicopter;
