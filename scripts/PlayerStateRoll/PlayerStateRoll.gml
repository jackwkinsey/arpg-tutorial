// Movement
hSpeed = lengthdir_x(speedRoll, direction);
vSpeed = lengthdir_y(speedRoll, direction);
moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
var collided = PlayerCollision();

// Animate Player
sprite_index = spriteRoll;
PlayerAnimateSprite(false, moveDistanceRemaining, distanceRoll);

// Change state
if (moveDistanceRemaining <= 0) {
	state = PlayerStateFree;
	localFrame = 0;
}

if (collided) {
	ScreenShake(2, 15);
	state = PlayerStateFree;
	localFrame = 0;
}