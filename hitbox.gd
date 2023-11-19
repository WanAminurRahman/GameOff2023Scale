extends Area2D

@export var damage: float = 1.0


func _on_hitbox_area_entered(hurtbox):
	hurtbox.emit_signal('take_damage', damage)
