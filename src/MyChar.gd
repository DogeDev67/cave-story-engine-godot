extends Node

func InitMyChar() -> void:
	MyCharHeader.gMC.cond = 0x80;
	MyCharHeader.gMC
	MyCharHeader.gMC.view.back = 8 * 0x200;
	MyCharHeader.gMC.view.top = 8 * 0x200;
	MyCharHeader.gMC.view.front = 8 * 0x200;
	MyCharHeader.gMC.view.bottom 
	MyCharHeader.gMC.hit.back = 5 * 0x200;
	MyCharHeader.gMC.hit.top = 8 * 0x200;
	MyCharHeader.gMC.hit.front = 5 * 0x200;
	MyCharHeader.gMC.hit.bottom 
	MyCharHeader.gMC.life = 3;
	MyCharHeader.gMC.max_life = 3;
	MyCharHeader.gMC.unit = 0;

# Function to handle animation logic
func animation_my_char(b_key: bool) -> void:
	# Check if the character is frozen or in special condition
	if MyCharHeader.gMC["cond"] & 2:
		return

	# Character is grounded (flag & 8 means grounded)
	if MyCharHeader.gMC["flag"] & 8:
		if MyCharHeader.gMC["cond"] & 1:
			MyCharHeader.gMC["ani_no"] = 11
		elif Input.is_action_pressed(gKeyUp) and (Input.is_action_pressed(gKeyLeft) or Input.is_action_pressed(gKeyRight)) and b_key:
			MyCharHeader.gMC["cond"] |= 4
			MyCharHeader.gMC["ani_wait"] += 1
			if MyCharHeader.gMC["ani_wait"] > 4:
				MyCharHeader.gMC["ani_wait"] = 0
				MyCharHeader.gMC["ani_no"] += 1
				if MyCharHeader.gMC["ani_no"] in [7, 9]:
					play_sound(24)
			
			if MyCharHeader.gMC["ani_no"] > 9 or MyCharHeader.gMC["ani_no"] < 6:
				MyCharHeader.gMC["ani_no"] = 6
		elif (Input.is_action_pressed(gKeyLeft) or Input.is_action_pressed(gKeyRight)) and b_key:
			MyCharHeader.gMC["cond"] |= 4
			MyCharHeader.gMC["ani_wait"] += 1
			if MyCharHeader.gMC["ani_wait"] > 4:
				MyCharHeader.gMC["ani_wait"] = 0
				MyCharHeader.gMC["ani_no"] += 1
				if MyCharHeader.gMC["ani_no"] in [2, 4]:
					play_sound(24)
			
			if MyCharHeader.gMC["ani_no"] > 4 or MyCharHeader.gMC["ani_no"] < 1:
				MyCharHeader.gMC["ani_no"] = 1
		elif Input.is_action_pressed(gKeyUp) and b_key:
			if MyCharHeader.gMC["cond"] & 4:
				play_sound(24)
			MyCharHeader.gMC["cond"] &= ~4
			MyCharHeader.gMC["ani_no"] = 5
		else:
			if MyCharHeader.gMC["cond"] & 4:
				play_sound(24)
			MyCharHeader.gMC["cond"] &= ~4
			MyCharHeader.gMC["ani_no"] = 0
	else:
		if MyCharHeader.gMC["up"]:
			MyCharHeader.gMC["ani_no"] = 6
		elif MyCharHeader.gMC["down"]:
			MyCharHeader.gMC["ani_no"] = 10
		else:
			if MyCharHeader.gMC["ym"] > 0:
				MyCharHeader.gMC["ani_no"] = 1
			else:
				MyCharHeader.gMC["ani_no"] = 3

	# Set the sprite rect depending on the direction
	if MyCharHeader.gMC["direct"] == 0:
		MyCharHeader.gMC["rect"] = rc_left[MyCharHeader.gMC["ani_no"]]
	else:
		MyCharHeader.gMC["rect"] = rc_right[MyCharHeader.gMC["ani_no"]]

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