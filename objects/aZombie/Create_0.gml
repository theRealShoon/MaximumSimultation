/// @description Person being infected
enum ZombieActions {
	Think,
	Wander,
	WanderThink,
	Roll,
	Chase,
	ChaseHeli,
}

HP = 100;
state = ZombieActions.Think;
//Test push