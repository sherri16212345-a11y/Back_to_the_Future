extends Node

@export var value: int = 1

func _on_area_2d_body_entered(body):
	print("spp")
	if body is CharacterBody2D:
		FtcGameControls.on_event_spp_collected(value)
		self.queue_free()
