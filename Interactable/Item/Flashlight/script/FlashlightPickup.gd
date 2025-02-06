# FlashlightPickup.gd
extends Area3D

@export var flashlight_scene: PackedScene
@export var interaction_text = "Поднять фонарик"

func _ready():
	add_to_group("Interactable")

func get_interaction_text():
	return interaction_text

func interact():
	var player = get_tree().get_first_node_in_group("Player")
	if player and !player.has_flashlight:
		player.equip_flashlight(flashlight_scene)
		queue_free()
