extends Node2D
var peer = NetworkedMultiplayerENet.new()
var port = 7777
var ip_address = "127.0.0.1"

func _ready():
	peer.create_server(port)
	get_tree().network_peer = peer
	peer.connect("peer_connected", self, "_on_peer_connected")
	peer.connect("peer_disconnected", self, "_on_peer_disconnected")

func _on_peer_connected(id:int):
	print("ID:,str(id) connected")

func _on_peer_disconnected(id:int):
	print("ID:,str(id) disconnected")
