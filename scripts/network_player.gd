extends CharacterBody2D

var sign = 1
const SPEED = 300.0
@export var player_score = 0

func _ready() -> void:
	$Label.text = self.name
	if self.name == "1":
		sign = -1

func _enter_tree() -> void:
	set_multiplayer_authority(name.to_int())
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_up"):
		player_score += sign
		print(str(player_score) + "     " + str(self.name))
	
func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * SPEED

	move_and_slide()
