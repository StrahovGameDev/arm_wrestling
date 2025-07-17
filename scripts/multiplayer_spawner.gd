extends MultiplayerSpawner

@export var network_player: PackedScene

func _ready() -> void:
	multiplayer.peer_connected.connect(spawn_player)

func spawn_player(id: int):
	MultiplayerHandler.player_count += 1
	if !multiplayer.is_server(): return
	
	var player: Node = network_player.instantiate()
	player.name = str(MultiplayerHandler.player_count)
	
	get_node(spawn_path).call_deferred("add_child", player)
