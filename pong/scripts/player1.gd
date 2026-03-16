extends CharacterBody2D


#player movement variables
var SPEED = 300.0 #pixels/sec



func _physics_process(delta):
	var direction := Input.get_axis("move_up1","move_down1")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	
