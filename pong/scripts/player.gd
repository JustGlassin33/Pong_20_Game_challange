extends CharacterBody2D


#player movement variables
var player_speed = 300.0 #pixels/sec



func _physics_process(delta):
	var direction = Input.get_axis("move_up","move_down")
	velocity = direction * player_speed
	move_and_slide()
	
