extends Node2D


@onready var enemy = preload("res://")


func _on_timer_timeout() -> void:
	var spawnedEnemy = enemy.instantiate()
	spawnedEnemy.position = position
	get_parent().get_node("spawner").add_child(spawnedEnemy)
