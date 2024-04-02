if (obj_player1.state != (93 << 0) && sprite_index == spr_taxiidle)
{
    playerid = other.object_index
    sprite_index = spr_taximove
    hsp = 10
    obj_player1.visible = false
    obj_player1.hsp = 0
    obj_player1.vsp = 0
    obj_player1.state = (93 << 0)
}
if (obj_player2.state != (93 << 0) && sprite_index == spr_taxiidle)
{
    playerid = other.object_index
    sprite_index = spr_taximove
    hsp = 10
    obj_player2.visible = false
    obj_player2.hsp = 0
    obj_player2.vsp = 0
    obj_player2.state = (93 << 0)
}
