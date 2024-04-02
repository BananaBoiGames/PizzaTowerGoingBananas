with (obj_player)
{
    if (state != (63 << 0))
    {
        if (state == (24 << 0) || state == (25 << 0) || state == (18 << 0))
        {
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5
        }
        if (state == (27 << 0))
            instance_create(x, y, obj_bombexplosion)
        scr_sound(sound_superjumprelease)
        sprite_index = spr_player_superjump
        state = (63 << 0)
        vsp = -10
        other.image_index = 0
        other.image_speed = 0.35
    }
}
