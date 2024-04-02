image_xscale = playerid.xscale
x = playerid.x
y = playerid.y
if ((playerid.image_index > 3 || playerid.state != (12 << 0)) && playerid.state != (22 << 0) && playerid.state != (9 << 0))
    instance_destroy()
