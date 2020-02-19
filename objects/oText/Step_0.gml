var messageLength = string_length(message);
var messageStarted = textProgress > 2;
var messageDisplayed = textProgress >= messageLength;

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if (keyboard_check_pressed(vk_space)) {
	if (messageDisplayed) {
		global.gamePaused = false;
		instance_destroy();
	} else if (messageStarted) {
		textProgress = messageLength;
	}
}
