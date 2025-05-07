extends Control

@onready var level_button: TextureButton = $HBoxContainer/LevelButton
@onready var level_button_2: TextureButton = $HBoxContainer/LevelButton2
@onready var level_button_3: TextureButton = $HBoxContainer/LevelButton3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

 #region Button Scale
func _on_level_button1_mouse_entered() -> void:
	level_button.scale = Vector2(1.1, 1.1)

func _on_level_button2_mouse_entered() -> void:
	level_button_2.scale = Vector2(1.1, 1.1)

func _on_level_button3_mouse_entered() -> void:
	level_button_3.scale = Vector2(1.1, 1.1)

func _on_level_button_mouse_exited() -> void:
	level_button.scale = Vector2(1.0, 1.0)

func _on_level_button2_mouse_exited() -> void:
	level_button_2.scale = Vector2(1.0, 1.0)

func _on_level_button3_mouse_exited() -> void:
	level_button_3.scale = Vector2(1.0, 1.0)
	pass # Replace with function body.
#endregion
