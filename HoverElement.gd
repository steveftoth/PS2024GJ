extends Area2D

@export var highlighted : bool 

var hoverColor: Color

# Called when the node enters the scene tree for the first time.
func _ready():
	highlighted = false
	hoverColor =  Color(1,0,0)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	var spread = find_child("SpreadArea")
	if(spread != null && !highlighted):
		highlighted = true
		spread.color = Color(1,0,0)
#spread.set_color


func _on_mouse_shape_entered(shape_idx):
	pass # Replace with function body.


func _on_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
