extends Node2D

@onready var icon: Sprite2D = $Icon

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("set_speed"):
		var new_speed = randf_range(1.0, 10.0)
		icon.material.set_shader_parameter("my_float", new_speed)
	
	if Input.is_action_just_pressed("set_color"):
		var new_color = Vector4(randf(), randf(), randf(), randf())
		icon.material.set_shader_parameter("my_color", new_color)
