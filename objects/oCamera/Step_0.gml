/// @description Update camera

show_debug_message("UPDATE CAMERA");

// Update camera destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

// Keep camera within room bounds
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

// Shake screen
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

// Update camera position
camera_set_view_pos(camera, x - viewWidthHalf, y - viewHeightHalf);