extends Node2D

var peer = NetworkedMultiplayerENet.new()
var ip_address = "127.0.0.1"
var port = 7777

func _ready():
	peer.create_client(ip_address,port)
	get_tree().network_peer = peer
	print("player connected to the server")
