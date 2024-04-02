repeat (6)
{
    with (instance_create((x + random_range(-25, 25)), (y + random_range(-25, obj_keyconfig)), obj_balloonpop))
        sprite_index = spr_shotgunimpact
}
