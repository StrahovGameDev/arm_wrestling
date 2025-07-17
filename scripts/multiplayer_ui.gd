extends Control


func _on_server_pressed() -> void:
	MultiplayerHandler.start_server()
	$VBoxContainer2.hide()


func _on_client_pressed() -> void:
	MultiplayerHandler.start_client($VBoxContainer2/TextEdit.text)
	$VBoxContainer2.hide()
