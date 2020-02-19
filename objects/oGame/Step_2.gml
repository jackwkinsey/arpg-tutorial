/// @description Handle Pause Game

if (keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
	
	with(all) {
		if (global.gamePaused) {
			// store image_speed before pausing
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		} else {
			// reset image_speed
			image_speed = gamePausedImageSpeed;
		}
	}
}
