with (obj_player1)
{
    if place_meeting(x, y, other.id)
    {
        if (state != (27 << 0) && state != (24 << 0) && state != (11 << 0) && state != (15 << 0) && state != (13 << 0) && state != (25 << 0) && state != (18 << 0) && state != (73 << 0))
        {
            instance_destroy(other.id)
            global.key_inv = 1
            key_particles = 1
            alarm[7] = 30
            scr_soundeffect(sfx_collecttoppin)
            obj_player1.state = (56 << 0)
            obj_player1.image_index = 0
        }
    }
}
with (obj_player2)
{
    if place_meeting(x, y, other.id)
    {
        if (state != (27 << 0) && state != (24 << 0) && state != (11 << 0) && state != (15 << 0) && state != (13 << 0) && state != (25 << 0) && state != (18 << 0) && state != (73 << 0))
        {
            instance_destroy(other.id)
            global.key_inv = 1
            key_particles = 1
            alarm[7] = 30
            obj_player2.state = (56 << 0)
            obj_player2.image_index = 0
            scr_soundeffect(sfx_collecttoppin)
        }
    }
}
