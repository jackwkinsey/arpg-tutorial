var obj;

if (instance_exists(oText)) {
	obj = oTextQueued;
} else {
	obj = oText;
}

with (instance_create_layer(x, y, "Instances", obj)) {
	message = argument[0];
	
	// Determine if another object called this script.
	// Useful for dialogue; e.g. knowing which character is speaking.
	if (instance_exists(other)) {
		originInstance = other.id;
	} else {
		originInstance = noone;
	}
	
	// Set background if given, otherwise use default.
	if (argument_count > 1) {
		background = argument[1];
	} else {
		background = 1;
	}
}

// Lock the player so they cannot move or act.
with (oPlayer) {
	if (state != PlayerStateLocked) {
		lastState = state;
		state = PlayerStateLocked;
	}
}