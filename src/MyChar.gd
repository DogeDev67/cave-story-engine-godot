extends Node

func InitMyChar() -> void:
	MyCharHeader.gMC.cond = 0x80;
	MyCharHeader.gMC.direct = 2;

	MyCharHeader.gMC.view.back = 8 * 0x200;
	MyCharHeader.gMC.view.top = 8 * 0x200;
	MyCharHeader.gMC.view.front = 8 * 0x200;
	MyCharHeader.gMC.view.bottom = 8 * 0x200;

	MyCharHeader.gMC.hit.back = 5 * 0x200;
	MyCharHeader.gMC.hit.top = 8 * 0x200;
	MyCharHeader.gMC.hit.front = 5 * 0x200;
	MyCharHeader.gMC.hit.bottom = 8 * 0x200;

	MyCharHeader.gMC.life = 3;
	MyCharHeader.gMC.max_life = 3;
	MyCharHeader.gMC.unit = 0;

func AnimationMyChar(bKey : bool) -> void:
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