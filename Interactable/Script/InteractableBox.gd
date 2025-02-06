# InteractableObject.gd
extends StaticBody3D

@export var interaction_text = "Открыть"


@export var interaction_prompt: String = "Взаимодействовать"

func interact():
	print("Базовое взаимодействие")
	# Этот метод должен быть переопределен в наследниках
