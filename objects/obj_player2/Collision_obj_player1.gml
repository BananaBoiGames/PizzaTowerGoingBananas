with (obj_player1)
{
    if (state == 22 && other.hurted == 0 && other.state != 73 && other.state != 18 && other.state != 24 && other.state != 2 && other.state != 6 && other.state != 27 && other.cutscene == 0 && other.hurted == 0 && hurted == 0)
    {
        if (obj_player1.spotlight == 0)
        {
            obj_camera.shoving = 1
            obj_camera.image_index = 0
        }
        obj_player1.spotlight = 1
        scr_changetoppings()
        movespeed = 0
        image_index = 0
        sprite_index = spr_haulingstart
        baddiegrabbedID = other.id
        state = 46
        other.state = 109
        obj_player1.depth = -7
        obj_player2.depth = -6
        if (global.collectN > 100)
        {
            global.collect += 100
            global.collectN -= 100
            instance_create(x, y, obj_100)
        }
    }
    if (state == 74 && other.hurted == 0 && other.state != 31 && other.state != 73 && hurted == 0)
    {
        if (obj_player1.spotlight == 0)
        {
            obj_camera.shoving = 1
            obj_camera.image_index = 0
        }
        obj_player1.spotlight = 1
        scr_changetoppings()
        obj_player1.depth = -7
        obj_player2.depth = -6
        obj_player2.state = 31
        obj_player2.sprite_index = obj_player2.spr_squished
        obj_player2.image_index = 0
        if (global.collectN > 100)
        {
            global.collect += 100
            global.collectN -= 100
            instance_create(x, y, obj_100)
        }
    }
}
