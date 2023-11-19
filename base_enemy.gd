extends CharacterBody2D

@export var max_speed: int = 50
#var velocity = Vector2.ZERO

@onready var stats = $EnemyStats


func _on_Hurtbox_take_damage(damage):
	stats.health -= damage
	


func _on_enemyStats_enemy_died():
	queue_free()
