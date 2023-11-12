extends CharacterBody2D

const ACCELERATION = 75.0
const SPEED = 150.0


func _physics_process(delta):
	# Get the input horizontalDirection and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = velocity.move_toward(input_direction * SPEED, ACCELERATION)
	move_and_slide()
