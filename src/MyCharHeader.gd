extends Node #my char

enum {
    EQUIP_BOOSTER_0_8 = 1,
	EQUIP_MAP = 2,
	EQUIP_ARMS_BARRIER = 4,
	EQUIP_TURBOCHARGE = 8,
	EQUIP_AIR_TANK = 0x10,
	EQUIP_BOOSTER_2_0 = 0x20,
	EQUIP_MIMIGA_MASK = 0x40,
	EQUIP_WHIMSICAL_STAR = 0x80,
	EQUIP_NIKUMARU_COUNTER = 0x100
}

class MYCHAR:
	var cond : String
	var flag : int
	var direct : int
	var up : bool
	var down : bool
	var unit : int
	var equip : int
	var x : int
	var y : int
	var tgt_x : int
	var tgt_y : int
	var index_x : int
	var index_y : int
	var xm : int
	var ym : int
	var ani_wait : int
	var ani_no : int
	var hit : Rect2i
	var view : Rect2i
	var rect : Rect2
	var rect_arms : Rect2
	var level : int
	var exp_wait : int
	var exp_count : int
	var shock : String
	var no_life : String
	var rensha : String
	var bubble : String
	var life : int
	var star : int
	var max_life : int
	var a : int
	var lifeBr : int
	var lifeBr_count : int
	var air : int
	var air_get : int
	var sprash : bool # This is explicitly a char, but used like a BOOL
	var ques : String # Same for this variable as well
	var boost_sw : String
	var boost_cnt : int

var gMC : MYCHAR = MYCHAR.new()

func InitMyChar() -> void:
	pass

func animation_my_char(b_key: bool) -> void:
	pass

func ShowMyChar(bShow : bool) -> void:
    pass

func put_my_char(fx: int, fy: int) -> void:
	pass

func act_my_char_normal(bKey: bool) -> void:
	pass

func act_my_char(bKey: bool) -> void:
	pass

func get_my_char_position(x: int, y: int) -> void:
	pass

func set_my_char_position(x: int, y: int) -> void:
	pass

func move_my_char(x: int, y: int) -> void:
	pass

func zero_my_char_x_move() -> void:
	pass

func get_unit_my_char() -> int:
	return 0

func set_my_char_direct(dir: int) -> void:
	pass

func change_my_unit(a: int) -> void:
	pass

func pit_my_char() -> void:
	pass

func equip_item(flag: int, b: bool) -> void:
	pass

func reset_check() -> void:
	pass

func set_noise(no: int, freq: int) -> void:
	pass

func cut_noise() -> void:
	pass

func reset_noise() -> void:
	pass

func sleep_noise() -> void:
	pass