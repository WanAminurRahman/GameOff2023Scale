extends Node

signal enemy_died

@export var max_health: int = 1

@onready var health = max_health:
	get:
		return health
	set(value):
		health = clamp(value, 0, max_health)
	
		if health == 0:
			emit_signal("enemy_died")
