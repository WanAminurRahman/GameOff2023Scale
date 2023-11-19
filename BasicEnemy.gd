extends "res://base_enemy.gd"

@export var ACCELERATION: int = 50
@export var FRICTION:int = 50

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var direction = 1
@onready var turn_detect = $TurnDetect

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if !turn_detect.is_colliding() and is_on_floor():
		direction = -direction
		scale.x = abs(scale.x) * -1
		
	velocity.x = ACCELERATION * direction

	
	move_and_slide()
