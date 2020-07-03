///@description Being born process
enum CivilianActions {
	Think,
	Move,
	Wander,
	WanderThink,
	Attack,
	TowardsHelicopter,
	RunThink,
	Run,
}

state = CivilianActions.Think;
ableToAttack = false
HP = 100;
Infection = 0;

Armed = irandom_range(0,100);
