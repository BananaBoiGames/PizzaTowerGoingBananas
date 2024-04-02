if (obj_player.state != (73 << 0) && global.panic == 0)
{
    ds_list_add(global.saveroom, id)
    global.panic = 1
    switch room
    {
        case floor1_roomtreasure:
            global.minutes = 2
            global.seconds = 30
            break
        case 220:
            global.minutes = 2
            global.seconds = 40
            break
        case 194:
            global.minutes = 2
            global.seconds = 30
            break
        case 166:
            global.minutes = 2
            global.seconds = 0
            break
        case 178:
            global.minutes = 2
            global.seconds = 0
            break
    }

    global.wave = 0
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
    if global.panicbg
        scr_panicbg_init()
}
