extends TextureButton

@export var level_number: String = "1"
@onready var level_label: Label = $MC/VBoxContainer/LevelLabel
@onready var score_label_2: Label = $MC/VBoxContainer/ScoreLabel2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_label.text = level_number
	score_label_2.text = str(ScoreManager.get_level_best(level_number))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	scale = Vector2 (1.1, 1.1)



func _on_mouse_exited() -> void:
	scale = Vector2 (1.0, 1.0)


func _on_pressed() -> void:
	ScoreManager.level_selected = level_number
	get_tree().change_scene_to_file("res://Scene/level_%s.tscn" % level_number)
