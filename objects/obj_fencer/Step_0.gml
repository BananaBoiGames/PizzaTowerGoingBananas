switch state
{
    case (94 << 0):
        scr_enemy_idle()
        break
    case (96 << 0):
        scr_enemy_charge()
        break
    case (98 << 0):
        scr_enemy_turn()
        break
    case (102 << 0):
        scr_enemy_walk()
        break
    case (104 << 0):
        scr_enemy_land()
        break
    case (105 << 0):
        scr_enemy_hit()
        break
    case (106 << 0):
        scr_enemy_stun()
        break
    case (97 << 0):
        scr_pizzagoblin_throw()
        break
    case (109 << 0):
        scr_enemy_grabbed()
        break
}

if (state == (106 << 0) && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (106 << 0))
    birdcreated = 0
if (obj_player1.x > (x - 400) && obj_player1.x < (x + 400) && y <= (obj_player1.y + 60) && y >= (obj_player1.y - 60))
{
    if (state != (94 << 0) && obj_player1.state == (90 << 0))
    {
        state = (94 << 0)
        sprite_index = scaredspr
        if (x != obj_player1.x)
            image_xscale = (-(sign((x - obj_player1.x))))
    }
}
if instance_exists(obj_player2)
{
    if (obj_player2.x > (x - 400) && obj_player2.x < (x + 400) && y <= (obj_player2.y + 60) && y >= (obj_player2.y - 60))
    {
        if (state != (94 << 0) && obj_player2.state == (90 << 0))
        {
            state = (94 << 0)
            sprite_index = scaredspr
            if (x != obj_player2.x)
                image_xscale = (-(sign((x - obj_player2.x))))
        }
    }
}
if (x != obj_player1.x && grounded)
{
    if (obj_player1.x > (x - 400) && obj_player1.x < (x + 400) && y <= (obj_player1.y + 20) && y >= (obj_player1.y - 20))
    {
        if (state == (102 << 0) && charging == 0)
        {
            with (instance_create(x, y, obj_forkhitbox))
                ID = other.id
            charging = 1
            state = (96 << 0)
            movespeed = 5
            vsp = -7
            sprite_index = spr_fencer_chargestart
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && grounded)
    {
        if (obj_player2.x > (x - 400) && obj_player2.x < (x + 400) && y <= (obj_player2.y + 20) && y >= (obj_player2.y - 20))
        {
            if (state == (102 << 0) && charging == 0)
            {
                with (instance_create(x, y, obj_forkhitbox))
                    ID = other.id
                charging = 1
                state = (96 << 0)
                movespeed = 5
                vsp = -7
                sprite_index = spr_fencer_chargestart
            }
        }
    }
}
if (state == (106 << 0) || state == (102 << 0))
{
    charging = 0
    movespeed = 0
}
if (sprite_index == spr_fencer_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_fencer_charge
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hitboxcreate == 0 && state == (102 << 0))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != (109 << 0))
    depth = 0
if (state != (106 << 0))
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}