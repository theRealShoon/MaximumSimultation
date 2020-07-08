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
	click,
}

COLLISIONTS = layer_tilemap_get_id(layer_get_id("TileLayer"));
inventoryState = MidGameUsage.helicopter;
