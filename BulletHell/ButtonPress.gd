extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var count = 0


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_button_pressed():
	count += 1
	if count >= 9999:
		get_node("Fade").show()
		get_node("AnimationPlayer").play("Fade")


func _on_AnimationPlayer_finished():
	get_tree().change_scene("res://game.tscn")
