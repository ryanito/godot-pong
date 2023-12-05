extends Label

var score = 0


func _ready():
	text = str(score)


func increment():
	score += 1
	text = str(score)
