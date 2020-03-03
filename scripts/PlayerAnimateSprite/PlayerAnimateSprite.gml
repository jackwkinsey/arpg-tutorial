/// @description Animates the player sprite, set loop to false and provide the progress and total values to animate sprite once over some period of time.
/// @param loop Whether the animation should loop or not (defaults to true)
/// @param progress How far along the animation is when not looping
/// @param total The unit of measurement to decide when animation is complete

var loop = true;
var progress = 1;
var total = 1;

if (argument_count == 3) {
	loop = argument[0];
	progress = argument[1];
	total = argument[2];
}

// Update Sprite
var totalFrames = sprite_get_number(sprite_index) / 4;

image_index = localFrame + (CARDINAL_DIRECTION_4 * totalFrames);

if (loop) {
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
} else {
	var percentComplete = 1 - (progress / total);
	var frame = percentComplete * totalFrames;
	
	// local frame should never be equal to totalFrames, using min() ensures that this doesn't happen
	localFrame = min(frame, totalFrames - 1);
}

if (localFrame >= totalFrames) {
	animationEnd = true;
	localFrame -= totalFrames;
} else {
	animationEnd = false;
}