if (place_meeting(x, y, ObjPlayer)) p1 = true;
if (place_meeting(x, y, ObjPlayer2)) p2 = true;

if (p1 && p2) {
    room_goto_next();
}
