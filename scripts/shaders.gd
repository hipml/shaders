extends Node2D

func _process(delta) -> void:
	var TIME = Time.get_ticks_msec() / 1000.0
	
	print(str((cos(TIME) + 1.0)/2))
