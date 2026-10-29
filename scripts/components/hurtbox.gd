
extends Area2D
class_name Hurtbox

@export var health: Health
signal hurt(damage, source)

func receive_hit(damage: float, source: Node) -> void:
	if health != null:
		health.take_damage(damage)
		
	hurt.emit(damage, source)
	
