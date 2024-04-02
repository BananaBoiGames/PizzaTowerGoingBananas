function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
	    global.throw_frame = 0
	    global.throw_frame[83] = 2
	    global.throw_frame[80] = 6
	    global.throw_frame[91] = 2
	    global.throw_frame[92] = 2
	    global.throw_frame[93] = 2
	    global.throw_frame[81] = 2
	    global.throw_frame[82] = 8
	    global.throw_frame[85] = 6
	    global.throw_frame[86] = 0
	    global.throw_frame[84] = 15
	    global.throw_sprite = spr_plug
	    global.throw_sprite[83] = spr_pizzagoblin_throwbomb
	    global.throw_sprite[80] = spr_cheeserobot_attack
	    global.throw_sprite[91] = spr_spitcheese_spit
	    global.throw_sprite[92] = spr_trash_throw
	    global.throw_sprite[93] = spr_invtrash_throw
	    global.throw_sprite[81] = spr_robot_attack
	    global.throw_sprite[82] = spr_kentukykenny_throw
	    global.throw_sprite[85] = spr_pizzard_shoot
	    global.throw_sprite[86] = spr_pepgoblin_kick
	    global.throw_sprite[84] = spr_swedishmonkey_eat
	    global.reset_timer = 0
	    global.reset_timer[83] = 200
	    global.reset_timer[80] = 200
	    global.reset_timer[91] = 100
	    global.reset_timer[92] = 100
	    global.reset_timer[93] = 100
	    global.reset_timer[81] = 200
	    global.reset_timer[82] = 200
	    global.reset_timer[85] = 100
	    global.reset_timer[86] = 100
	    global.reset_timer[84] = 200
	}
	hsp = 0
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if (floor(image_index) == (image_number - 1))
	    state = (102 << 0)
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index]
	    sprite_index = global.throw_sprite[object_index]
	    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
	        scr_soundeffect(sfx_enemyprojectile)
	    switch object_index
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_pizzagoblinbomb))
	            {
	                hsp = (other.image_xscale * 10)
	                vsp = -8
	            }
	            break
	        case 80:
	            with (instance_create(x, y, obj_cheeseblob))
	            {
	                sprite_index = spr_cheeserobot_goop
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 8)
	                vsp = 0
	                grav = 0
	            }
	            break
	        case 91:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_spitcheesespike))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -6
	            }
	            break
	        case 92:
	        case 93:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -4
	            }
	            break
	        case 81:
	            with (instance_create(x, y, obj_robotknife))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	            }
	            break
	        case 82:
	            with (instance_create(x, y, obj_kentukykenny_projectile))
	                image_xscale = other.image_xscale
	            break
	        case 85:
	            with (instance_create(x, y, obj_pizzard_bolt))
	                image_xscale = other.image_xscale
	            break
	        case 84:
	            with (instance_create(x, y, obj_slipnslide))
	            {
	                baddieID = other.id
	                image_xscale = other.image_xscale
	                hsp = ((-other.image_xscale) * 4)
	                vsp = -5
	                with (obj_slipnslide)
	                {
	                    if (baddieID == other.baddieID)
	                        banana += 1
	                }
	            }
	            break
	        case 86:
	            with (instance_create(x, y, obj_pepgoblin_kickhitbox))
	            {
	                baddieID = other.id
	                image_xscale = other.image_xscale
	            }
	            break
	    }
	
	}
	if ((!grounded) && hsp < 0)
	    hsp += 0.1
	else if ((!grounded) && hsp > 0)
	    hsp -= 0.1
}
