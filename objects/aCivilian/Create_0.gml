///@description Being born process
enum CivilianActions {
	Think,
	Move,
	Wander,
	Attack,
	TowardsHelicopter,
	RunThink,
	Run,
}

state = CivilianActions.Wander;
ableToAttack = false
HP = 100;
Infection = 0;

Armed = irandom_range(0,100);
