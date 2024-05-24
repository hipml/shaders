extends Node3D

@onready var sphere_example: MeshInstance3D = $SphereExample

func _process(_delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	
	if Input.is_action_just_pressed("random_color"):
		var sphere_mat: ShaderMaterial = sphere_example.get_active_material(0)
		sphere_mat.set_shader_parameter("sphere_color", Vector3(randf(), randf(), randf()))
		
