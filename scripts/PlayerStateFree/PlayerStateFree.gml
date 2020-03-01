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

// Handle active key press
if (keyActivate) {
	// Get point 10 pixels in front of player.
	var activateX = lengthdir_x(10, direction);
	var activateY = lengthdir_y(10, direction);
	
	// Check for an instance of pEntity at activation point
	activate = instance_position(x + activateX, y + activateY, pEntity);
	
	// If there is no entity or the entity doesn't have an activation script
	if (activate == noone || activate.entityActivateScript == -1) {
		// ROLL!!!
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
		localFrame = 0;
	} else {
		// Otherwise, activate the entity's activation script
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		// If the entity is an NPC make them face the player.
		if (activate.entityNPC) {
			with (activate) {
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIRECTION;
			}
		}
	}
}