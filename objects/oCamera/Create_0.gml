/// @description Set up camera

camera = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(camera) * 0.5;
viewHeightHalf = camera_get_view_height(camera) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
