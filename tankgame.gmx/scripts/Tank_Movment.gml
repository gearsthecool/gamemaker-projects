/// handle movement

up = keyboard_check(up_key);
down = keyboard_check(down_key);
left = keyboard_check(left_key);
right = keyboard_check(right_key)

if (up) {
    direction = 90; 
}

if (down) {
    direction = 270;
}
    
if (left) {
    direction = 180;
}
    
if (right) {
    direction = 0;
}

if (right && up)
{
    direction = 45;
}

if (left and up) {
    direction = 135;
}

if (right and down) {
    direction = 315;
}

if (left and down) {
    direction = 225;
    }
if ((left and right) or (up and down)) {
    speed = 0;
 }   

if ((left or right or up or down)) {
    speed = 5;
}

image_angle = direction
