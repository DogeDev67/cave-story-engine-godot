extends Node

@onready var audio_sfx = get_node("sfx")
@onready var audio_music = get_node("music")


func play_sound(sound : AudioStream):
    audio_sfx.stream = sound
    audio_sfx.play()
    pass

func play_music(music : AudioStream):
    audio_music.stream = music
    audio_music.play()
    pass