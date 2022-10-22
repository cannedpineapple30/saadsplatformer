extends KinematicBody2D


var movement = Vector2(0, 0)
const gravity = 800
const jump_speed = 26000
var move_speed = 2000

func _physics_process(delta):
	if Input.is_action_pressed("jump")and is_on_floor():
		movement.y-=jump_speed * delta
	else:
		movement.y+=gravity * delta
	

	if Input.is_action_pressed("right"):
		movement.x +=move_speed * delta
		
	if Input.is_action_pressed("left"):
		movement.x -=move_speed * delta
		
		
	movement = move_and_slide(movement, Vector2.UP)
	
	movement.x = lerp(movement.x, 0, 0.1) 
	

	
