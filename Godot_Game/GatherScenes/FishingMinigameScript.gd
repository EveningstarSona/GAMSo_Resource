extends Node2D

var rng = RandomNumberGenerator.new()
var amount = 13
var current_key = null
var example_sprite = load("res://GatherScenes/example_sprite.tscn")
var keys = []
var times = []
var timers = []
var minigamekeys = []
var sprites = []
var inputs = ["ui_up", "ui_right", "ui_down", "ui_left"]
var cooldown = 5
var presscooldown = 0.1

func lose():
	$Playing.text = "Lost"

func _ready():
	rng.randomize()
	for _i in range(amount):
		keys.push_back(inputs[rng.randi_range(0, 3)])
		times.push_back(rng.randf_range(0.5, 1.5))
		add_child(Timer.new(), true)
		add_child(example_sprite.instance(), true)
	for i in range(amount):
		if i == 0:
			timers.push_back(get_node("Timer"))
			sprites.push_back(get_node("example_sprite"))
		else:
			timers.push_back(get_node("Timer" + str(i+1)))
			sprites.push_back(get_node("example_sprite" + str(i+1)))
	for i in range(amount):
		minigamekeys.push_back(FishingMinigameKey.new(i, keys[i], times, timers[i], sprites[i]))
	for i in range(amount):
		minigamekeys[i].printself()
		minigamekeys[i].timer.start()
		print(minigamekeys[i].timer.time_left)

func _process(delta):
	for i in range(minigamekeys.size()):
		minigamekeys[i].update_sprite()
	if cooldown == 0:
		for i in range(minigamekeys.size()):
			print(minigamekeys[i].timer.time_left)
		print("\n")
		cooldown = 5
	if presscooldown == 0:
		if Input.is_action_just_pressed("ui_up"):
			current_key = minigamekeys.pop_front()
			if current_key.timer.time_left > 1 or current_key.key != "ui_up":
				lose()
			presscooldown = 0.1
		elif Input.is_action_just_pressed("ui_right"):
			current_key = minigamekeys.pop_front()
			if current_key.timer.time_left > 1 or current_key.key != "ui_right":
				lose()
			presscooldown = 0.1
		elif Input.is_action_just_pressed("ui_down"):
			current_key = minigamekeys.pop_front()
			if current_key.timer.time_left > 1 or current_key.key != "ui_down":
				lose()
			presscooldown = 0.1
		elif Input.is_action_just_pressed("ui_left"):
			current_key = minigamekeys.pop_front()
			if current_key.timer.time_left > 1 or current_key.key != "ui_left":
				lose()
			presscooldown = 0.1
			
	cooldown = max(cooldown - delta, 0)
	presscooldown = max(presscooldown - delta, 0)
