extends Control


func _on_server_pressed() -> void:
	MultiplayerHandler.start_server()


func _on_client_pressed() -> void:
	MultiplayerHandler.start_client()
