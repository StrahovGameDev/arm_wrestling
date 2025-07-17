extends CharacterBody2D


const SPEED = 300.0

func _ready() -> void:
	$Label.text = self.name

func _enter_tree() -> void:
	set_multiplayer_authority(name.to_int())
	


func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * SPEED

	move_and_slide()
