if (global.panic == 0 && global.snickchallenge == 0)
{
    if instance_exists(obj_pepperman)
    {
        audio_stop_all()
        scr_sound(mu_chase)
    }
    var roomname = room_get_name(room)
    if (room == characterselect)
    {
        if (!audio_is_playing(mu_characterselect))
        {
            audio_stop_all()
            scr_sound(mu_characterselect)
            pausedmusic = 93
        }
    }
    if (string_letters(roomname) == "Realtitlescreen" || string_letters(roomname) == "Realtitlescreen")
    {
        if (!audio_is_playing(mu_title))
        {
            audio_stop_all()
            scr_sound(mu_title)
            pausedmusic = 84
        }
    }
    if (string_letters(roomname) == "hubroom" || string_letters(roomname) == "Titlescreen" || string_letters(roomname) == "halloweenentrance")
    {
        if (!audio_is_playing(mu_hub))
        {
            audio_stop_all()
            scr_sound(mu_hub)
            pausedmusic = 70
        }
    }
    if (string_letters(roomname) == "PProom" || string_letters(roomname) == "PProom")
    {
        if (!audio_is_playing(mu_tutorial))
        {
            audio_stop_all()
            scr_sound(mu_tutorial)
            pausedmusic = 85
        }
    }
    if (string_letters(roomname) == "entrance")
    {
        if (!audio_is_playing(mu_entrance))
        {
            audio_stop_all()
            scr_sound(mu_entrance)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 73
        }
    }
    if (string_letters(roomname) == "dungeon")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("dungeon_" + string(i)) && i <= 8)
            {
                if (!audio_is_playing(mu_dungeon))
                {
                    audio_stop_all()
                    scr_sound(mu_dungeon)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 83
                }
            }
            else if (roomname == ("dungeon_" + string(i)) && i > 8)
            {
                if (!audio_is_playing(mu_dungeondepth))
                {
                    audio_stop_all()
                    scr_sound(mu_dungeondepth)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 91
                }
            }
        }
    }
    if (string_letters(roomname) == "medieval")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("medieval_" + string(i)) && i <= 2)
            {
                if (!audio_is_playing(mu_medievalentrance))
                {
                    audio_stop_all()
                    scr_sound(mu_medievalentrance)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 86
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 2 && i <= 5)
            {
                if (!audio_is_playing(mu_medievalremix))
                {
                    audio_stop_all()
                    scr_sound(mu_medievalremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 76
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_medieval))
                {
                    audio_stop_all()
                    scr_sound(mu_medieval)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 74
                }
            }
        }
    }
    if (string_letters(roomname) == "ruin")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("ruin_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_ruin))
                {
                    audio_stop_all()
                    scr_sound(mu_ruin)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 87
                }
            }
            else if (roomname == ("ruin_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_ruinremix))
                {
                    audio_stop_all()
                    scr_sound(mu_ruinremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 88
                }
            }
        }
    }
    if (string_letters(roomname) == "chateau")
    {
        if (!audio_is_playing(mu_chateau))
        {
            audio_stop_all()
            scr_sound(mu_chateau)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 75
        }
    }
    if (string_letters(roomname) == "chateausecret" || string_letters(roomname) == "medievalsecret" || string_letters(roomname) == "ruinsecret" || string_letters(roomname) == "dungeonsecret")
    {
        if (!audio_is_playing(mu_secret))
        {
            audio_stop_all()
            scr_sound(mu_secret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 71
        }
    }
	if (string_letters(roomname) == "mario")
    {
        if (!audio_is_playing(mu_mario))
        {
            audio_stop_all()
            scr_sound(mu_mario)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 73
        }
    }
}