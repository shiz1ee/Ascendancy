extends Hitbox

func _ready() -> void:
	super()
	await get_tree().create_timer(randf()).timeout
	$Sprite2D.play()
