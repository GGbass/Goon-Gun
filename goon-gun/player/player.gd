extends CharacterBody3D

const SPEED = 5.0

func _physics_process(delta):
	var input_vector = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	delta = delta + 0
	var direction = Vector3(input_vector.x, 0, input_vector.y)
	velocity.x = direction.x * SPEED
	velocity.z = direction.z * SPEED
	
	move_and_slide()
