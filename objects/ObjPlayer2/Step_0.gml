// MOVIMENTO LATERAL
vel_x = 0;

if (keyboard_check(ord("A"))) {
    vel_x = -move_speed;
}

if (keyboard_check(ord("D"))) {
    vel_x = move_speed;
}

x += vel_x;


// GRAVIDADE
vel_y += gravidade;
y += vel_y;


// COLISÃO COM O CHÃO
if (place_meeting(x, y, o_chao)) {
    while (!place_meeting(x, y + sign(vel_y), o_chao)) {
        y += sign(vel_y);
    }
    vel_y = 0;
}


// PULO
if (keyboard_check_pressed(ord("W"))) {
    if (place_meeting(x, y+1, o_chao)) {
        vel_y = -10;
    }
}
