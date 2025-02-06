extends Node3D

@onready var light: SpotLight3D = $SpotLight3D
var is_on = false

func _ready():
	light.visible = false  # Начальное состояние выключен

func toggle():
	var tween = create_tween().set_trans(Tween.TRANS_SINE)
	
	if is_on:
		tween.tween_property(light, "light_energy", 0.0, 0.2)
	else:
		light.visible = true
		light.light_energy = 0.0
		tween.tween_property(light, "light_energy", 1.5, 0.2)
	
	is_on = !is_on
