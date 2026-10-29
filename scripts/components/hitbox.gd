extends Area2D
class_name Hitbox

@export var damage: float = 10

var already_hit: Array = []

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(area: Area2D) -> void: 
	if area is Hurtbox and area not in already_hit:
		already_hit.append(area)
		area.receive_hit(damage, owner)

func reset_hits() -> void:
	already_hit.clear()
