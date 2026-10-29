extends Node
class_name Health

signal health_changed(current, max)
signal died

@export var max_health: float = 100
var current: float

func _ready() -> void:
	current = max_health
	

func take_damage(amount: float) -> void:
	if (current <= 0):
		return
	current = clampf(current - amount, 0.0, max_health)
	
	health_changed.emit(current, max_health)
	
	if (current <= 0):
		died.emit()

func heal(amount: float) -> void:
	if (current <= 0 or current >= max_health):
		return
	
	current = clampf(current + amount, 0.0, max_health)
	
	health_changed.emit(current, max_health)
	
	
