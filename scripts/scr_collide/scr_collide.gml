function scr_collide()
{
    grounded = 0
    // Vertical
    repeat(abs(vsp)) {
        if !scr_solid(x, y + sign(vsp))
            y += sign(vsp); 
        else {
            vsp = 0;
            break;
        }
    }

    // Horizontal
    repeat(abs(hsp)) {
        // Move up slope
        if scr_solid(x + sign(hsp), y) && !scr_solid(x + sign(hsp), y - 1)
            y--

        // Move down slope
        if !scr_solid(x + sign(hsp), y) && !scr_solid(x + sign(hsp), y + 1) && scr_solid(x + sign(hsp), y + 2)
            y++;

        if !scr_solid(x + sign(hsp), y)
            x += sign(hsp); 
        else {
            hsp = 0;
            break;
        }
    }
    if (vsp < 20)
        vsp += grav
    grounded |= scr_solid(x, (y + 1))
    grounded |= ((!(place_meeting(x, y, obj_platform))) && place_meeting(x, (y + 1), obj_platform))
}