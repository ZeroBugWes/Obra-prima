// MOVIMENTO LATERAL
vel_x = 0;
hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * vel;

if (place_meeting(x, y+1, ObjChao)) {
    if (keyboard_check(ord("W"))) {
        vsp = pulo;
    }
}
