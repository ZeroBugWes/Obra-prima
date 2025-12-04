// gravidade
vsp += grav;

// mover horizontal
hsp = 0;
if (keyboard_check(vk_right)) hsp = vel;
if (keyboard_check(vk_left))  hsp = -vel;

// pulo 
if (place_meeting(x, y + 1, ObjChao)) and keyboard_check(vk_up) {
	vsp -= 8
}

// aplicar movimento
x += hsp;
y += vsp;

// colisão com chão
if (place_meeting(x, y, ObjChao)) {
    y -= vsp;
    vsp = 0;
}

