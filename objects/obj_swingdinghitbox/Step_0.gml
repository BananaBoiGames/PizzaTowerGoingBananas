x = playerid.x
y = playerid.y
with (playerid)
{
    if (state != (46 << 0))
        instance_destroy(other.id)
}
