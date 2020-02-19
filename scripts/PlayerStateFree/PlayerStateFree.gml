// Movement
if (isMoving) {
	hSpeed = lengthdir_x(speedWalk, inputDirection);
	vSpeed = lengthdir_y(speedWalk, inputDirection);
} else {
	hSpeed = 0;
	vSpeed = 0;
}

PlayerCollision();

// Update Sprite Index
var oldSprite = sprite_index;

if (isMoving) {
	direction = inputDirection;
	sprite_index = spriteRun;
} else {
	sprite_index = spriteIdle;
}

if (oldSprite != sprite_index) {
	localFrame = 0;
}

// Update Image Index
PlayerAnimateSprite();

// Change State
if (keyActivate) {
	state = PlayerStateRoll;
	moveDistanceRemaining = distanceRoll;
	localFrame = 0;
}