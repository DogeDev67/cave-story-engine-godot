# CODE VERY INSPIRED BY CSE2
# THANKS IN ADVANCE

extends Node
const ARMS_MAX = 8
const ITEM_MAX = 32

func _ready():

    # dont modify this loop
    for i in ARMS_MAX:
        gArmsData[i] = 0
    
    for i in ITEM_MAX:
        gItemsData[i] = 0

class ARMS:
    var id : int
    var level : int
    var experience : int
    var max_ammo : int
    var ammo : int

class ITEM:
    var id : int

var gArmsData : Array
var gItemsData : Array

var gSelectedArms : int

var gSelectedItem : int

var gCampTitleY : int

var gCampActive : bool

var gArmsEnergyX : int

func clear_arms_data():
    gSelectedArms = 0
    gArmsEnergyX = 32
    gArmsData.clear()

func clear_item_data():
    gItemsData.clear()

func AddArmsData(id : float, max_ammo : float) -> bool: # according to cse2 these are longs for whatever reason
    var i : int = 0
    while (i < ARMS_MAX):
        if gArmsData[i].id == id:
            break # already exists
        
        if gArmsData[i].id == 0:
            break # free
        
        i += 1

    if i == ARMS_MAX:
        return false # no space left

    if gArmsData[i].id == 0:
        gArmsData[i] = ARMS.new()
        gArmsData[i].level = 1

    gArmsData[i].id = id
    gArmsData[i].max_ammo += max_ammo
    gArmsData[i].ammo += max_ammo

    if gArmsData[i].ammo > gArmsData[i].max_ammo:
        gArmsData[i].ammo = gArmsData[i].max_ammo
    return true

func SubArmsData(id : float) -> bool:

    var i : int

    for j in ARMS_MAX:
        i = j # godot doesnt allow using a defined variable to iterate a for loop
        if gArmsData[i].id == id:
            break
        return false
    
    for j in ARMS_MAX:
        i = j + 1
        gArmsData[i - 1] = gArmsData[i]

    gArmsData[i - 1].id = 0
    gSelectedArms = 0

    return true


func TradeArms(id1 : float, id2 : float, max_ammo : float) -> bool:
    var i : int = 0

    while i < ARMS_MAX:
        if gArmsData[i].id == id1:
            break
        
        i += 1
    
    if i == ARMS_MAX:
        return false
    
    gArmsData[i].level = 1
    gArmsData[i].id = id2
    gArmsData[i].max_ammo += max_ammo
    gArmsData[i].ammo += max_ammo
    gArmsData[i].experience = 0

    return true

func AddItemData(id : float) -> bool:
    var i : int = 0
    
    while i < ITEM_MAX:
        if gItemsData[i].id == id:
            break
        
        if gItemsData[i].id == 0:
            break

        i += 1
    
    if i == ITEM_MAX:
        return false
    
    gItemsData[i].id = id

    return true

func SubItemData(id : float) -> bool:

    #search for id
    var i : int
    for j in ITEM_MAX:
        i = j
        if gItemsData[i].id == id:
            break #id found

    if i == ITEM_MAX:
        return false

    #shift all items
    for j in ITEM_MAX:
        i = j + 1
        gItemsData[i - 1] = gItemsData[i]
    
    gItemsData[i - 1].id = 0
    gSelectedItem = 0

    return true

func MoveCampCursor() -> void:
    var bChange : bool

    var arms_num = 0
    var item_num = 0


    while gArmsData[arms_num] != 0:
        arms_num += 1
    while gItemsData[item_num] != 0:
        item_num += 1

    if arms_num == 0 && item_num == 0:
        return
    
    bChange = false

    if !gCampActive:
        if Input.is_action_just_pressed("KEY_LEFT"):
            gSelectedArms -= 1
            bChange = true
        if Input.is_action_just_pressed("KEY_RIGHT"):
            gSelectedArms += 1
            bChange = true

        if Input.is_action_just_pressed("KEY_UP") or Input.is_action_just_pressed("KEY_DOWN"):
            if item_num != 0:
                gCampActive = true
            
            bChange = true

        if gSelectedArms < 0:
            gSelectedArms = arms_num - 1
        
        if gSelectedArms > arms_num - 1:
            gSelectedArms = 0

    else:
        if Input.is_action_just_pressed("KEY_LEFT"):
            if gSelectedArms % 6 == 0:
                gSelectedArms += 5
            else:
                gSelectedArms -= 1
            
            bChange = true

        if Input.is_action_just_pressed("KEY_RIGHT"):
            if gSelectedItem == item_num - 1:
                gSelectedItem = (gSelectedItem / 6) * 6 # round down to multiple of 6 idk
            elif gSelectedItem % 6 == 5:
                gSelectedItem -= 5 # loop around row
            else:
                gSelectedItem += 1

            bChange = true
        
        if Input.is_action_just_pressed("KEY_UP"):
            if gSelectedItem / 6 == 0:
                gCampActive = false # we're on the first row, transition to weapons
            else:
                gSelectedItem -= 6
            
            bChange = true
        
        if Input.is_action_just_pressed("KEY_DOWN"):
            if gSelectedItem / 6 == (item_num - 1) / 6:
                gCampActive = false
            else:
                gSelectedItem += 6
            
            bChange = true
            #TODO:  ArmsItem.cpp line 279 - 309

        
