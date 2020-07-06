/// @description Bullet go towards zombie
var target = instance_nearest(x,y,aZombie);
move_towards_point(target.x,target.y,8);