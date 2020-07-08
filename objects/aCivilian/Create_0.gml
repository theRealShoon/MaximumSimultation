///@description Being born process

state = CivilianActions.Think;
ableToAttack = false;
HP = 100;
Infection = 0;
statinfo  = 0;
fname = first_name_generate();
lname = last_name_generate();


Armed = irandom_range(0,100);

COLLISIONTS = layer_tilemap_get_id(layer_get_id("TileLayer"));