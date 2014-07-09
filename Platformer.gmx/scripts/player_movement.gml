/// handle movement

right = keyboard_check(right_key);
left = keyboard_check(left_key);
space = keyboard_check_pressed(jump_key);

max_gravity = 15;

if (left) {
    _hspeed = -move_speed;
    image_xscale = -1;
    }

if (right) {
    _hspeed = move_speed;
         image_xscale = 1
}

if (left and right) {
    _hspeed = 0;
     }
     
if (not left and not right and on_ground) {
        _hspeed -= sign(_hspeed) * _friction;
        }
        
if (_vspeed < max_gravity) _vspeed += _gravity;
        
if (place_meeting(x,y+1,Block)) {
     on_ground = true;
     _vspeed = space * -jump_speed
    } else {
    on_ground = false;
}

if ( place_meeting (x+_hspeed,y ,Block) ) {
   while ( not place_meeting(x+sign(_hspeed),y,Block) ) { 
   x += sign(_hspeed);
   }
   _hspeed = 0;
}
 x += _hspeed
 
 if (place_meeting(x, y+_vspeed, Block) ) {
    while ( not place_meeting (x,y+sign(_vspeed), Block) ) {
        y += sign(_vspeed);
        }
        _vspeed = 0;
}

y += _vspeed;

if (_hspeed == 0) {
    sprite_index = sprite_facing;
} else {
    sprite_index = sprite_moving;
}
