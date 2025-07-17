extends Node2D

var game_score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event: InputEvent) -> void:
	if find_child("1"):
		game_score += $"1".player_score
	
	if find_child("2"):
		game_score += $"2".player_score
	print(game_score)
	$MultiplayerUI/Score.text = "SCORE: " + str(game_score)
