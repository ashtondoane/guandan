extends Node2D

var hoverShift = Vector2(0, -20) # should be adjusted for current angle.
var dragging = false
var defaultPos

func _on_area_2d_mouse_entered() -> void:
	position += hoverShift

func _on_area_2d_mouse_exited() -> void:
	position = defaultPos



func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.button_mask == 1:
		dragging = true;
		position = event.position;
	if event.button_mask == 0 && dragging:
		dragging = false;
		position = defaultPos
		
func _ready():
	defaultPos = position
