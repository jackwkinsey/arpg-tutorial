/// @description ScreenShake(magnitude, frames)
/// @arg magnitude sets the strength of the shake (distance range)
/// @arg frames sets the length of the shake in frames (60 = 1 second)

var magnitude = argument0;
var frames = argument1;

with (global.iCamera) {
	if (magnitude > shakeRemain) {
		shakeMagnitude = magnitude;
		shakeRemain = shakeMagnitude;
		shakeLength = frames;
	}
}
