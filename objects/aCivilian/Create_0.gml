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
	Roll,
}

state = CivilianActions.Think;
ableToAttack = false
HP = 100;
Infection = 0;
statinfo  = 0;

Armed = irandom_range(0,100);
