extends Node2D

var width: int
var height: int
var sideLength: int
var startElements: Array


# Called when the node enters the scene tree for the first time.
func _ready():
	startElements = Array()
	width = 10
	height = 10
	
	var scene = load("res://HoverElement.tscn")
	sideLength = 10
	for w in range(1,width):
		for h in range(1,height):
			var element = scene.instantiate()
			element.position = Vector2(w*sideLength,h*sideLength)
			add_child(element)
			startElements.push_back(element)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var allHighlighted = true
	for x in startElements:
		if !x.highlighted:
			allHighlighted = false
	if allHighlighted:
		get_tree().change_scene_to_file("res://game.tscn")
