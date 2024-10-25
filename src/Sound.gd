extends Node

const SE_MAX = 160

enum SoundEffectNames
{
	SND_YES_NO_CHANGE_CHOICE = 1,
	SND_MESSAGE_TYPING = 2,
	SND_QUOTE_BUMP_HEAD = 3,
	SND_SWITCH_WEAPON = 4,
	SND_YES_NO_PROMPT = 5,
	# To be continued
	SND_SILLY_EXPLOSION = 25,
	SND_LARGE_OBJECT_HIT_GROUND = 26,
	# To be continued
	SND_ENEMY_SHOOT_PROJECTILE = 39,
	# To be continued
	SND_BEHEMOTH_LARGE_HURT = 52,
	# To be continued
	SND_EXPLOSION = 72
	# To be continued
}


enum SoundMode
{
	SOUND_MODE_PLAY_LOOP = -1,
	SOUND_MODE_STOP = 0,
	SOUND_MODE_PLAY = 1
}

func init_direct_sound() -> bool:
    return false

func end_direct_sound():
    pass

func init_sound_object(resname: String, no: int) -> bool:
    return false

func load_sound_object(file_name: String, no: int) -> bool:
    return false

func play_sound_object(no: int, mode: int):
    pass

func change_sound_frequency(no: int, rate: int):
    pass

func change_sound_volume(no: int, volume: int):
    pass

func change_sound_pan(no: int, pan: int):
    pass

func make_pix_tone_object(ptp, ptp_num: int, no: int) -> int:
    return 0