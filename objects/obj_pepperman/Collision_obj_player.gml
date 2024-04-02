with (other.id)
{
    if (state != (4 << 0) && other.dead == 0)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = (4 << 0)
        vsp = -10
    }
}
