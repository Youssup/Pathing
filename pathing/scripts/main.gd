extends Node2D

var currentTurn = 1  # 1 for Player 1, 2 for Player 2

func _ready() -> void:
	startTurn()

func startTurn():
	print("Player " + str(currentTurn) + "'s turn")

func endTurn():
	if currentTurn == 2:
		currentTurn = 1
	else:
		currentTurn = 2
	startTurn()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		endTurn()
