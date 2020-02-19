state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Collisions"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 64;

spriteRoll = sPlayerRoll;
spriteIdle = sPlayer;
spriteRun = sPlayerRun;
localFrame = 0;