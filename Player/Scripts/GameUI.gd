# GameUI.gd
extends CanvasLayer

@export var crosshair_texture: Texture2D :  # Настройка через инспектор
	set(value):
		crosshair_texture = value
		if $Crosshair:
			$Crosshair.texture = value

func show_interaction_prompt(text: String):
	$InteractionPrompt.text = "[E] " + text
	$InteractionPrompt.visible = true

func hide_interaction_prompt():
	$InteractionPrompt.visible = false
