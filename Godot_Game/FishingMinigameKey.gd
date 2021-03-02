extends Object

class_name FMinigameKey

var id: int
var key: String
var time: float
var timer: Timer
var sprite: Sprite

static func sum_array(array):
	var sum = 0.0
	for element in array:
		 sum += element
	return sum

func printself():
	print(self.id, " ", self.key, " ", self.time, " ", self.timer)

func set_timer():
	self.timer.wait_time = self.time + 3.0

func set_sprite():
	self.sprite.position.x = self.id * 100 + 50
	self.sprite.position.y = (self.time + 3.0) * 50 + 50
	var rotations = {"ui_up": 0, "ui_right": (PI/2), "ui_down": PI, "ui_left": (1.5*PI)}
	self.sprite.rotation = rotations[self.key]

func update_sprite():
	if self.timer.time_left * 50 + 50 <= 400:
		self.sprite.position.y = self.timer.time_left * 50 + 50
	else:
		self.sprite.position.y = 800
	
func _init(id, key, times, timer, sprite):
	self.id = id
	self.key = key
	var times2 = []
	for i in range(id + 1):
		times2.push_back(times[i])
	self.time = self.sum_array(times2)
	self.timer = timer
	self.sprite = sprite
	self.set_timer()
	self.set_sprite()
