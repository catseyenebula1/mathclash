extends Node

var score = 0
var save_data: SaveData

func _ready():
	save_data = SaveData.load_or_create()
	score = 0
