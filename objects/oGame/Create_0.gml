/// @description Initialize game

// Make sure our randoms are actually random.
randomize();

// Globals
global.gamePaused = false;
global.textSpeed = 1;
global.iCamera = instance_create_layer(0, 0, layer, oCamera);

surface_resize(application_surface, RESOLUTION_WIDTH, RESOLUTION_HEIGHT);

// Start game in our starting room
room_goto(ROOM_START);
