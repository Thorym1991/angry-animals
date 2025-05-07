extends Control

@onready var level_label: Label = $MarginContainer/VBoxContainer/LevelLabel
@onready var attempts_label: Label = $MarginContainer/VBoxContainer/AttemptsLabel
@onready var v_box_container_2: VBoxContainer = $MarginContainer/VBoxContainer2
@onready var music: AudioStreamPlayer = $Music


var _attempts: int = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_label.text = "Level %s" % ScoreManager.level_selected
	on_attempt_made()


func _enter_tree() -> void:
	SignalHub.on_attempt_made.connect(on_attempt_made)
	SignalHub.on_cup_destroyed.connect(on_cup_destroyed)


func on_attempt_made() -> void:
	_attempts += 1
	attempts_label.text = "Attempts %s" % _attempts

func on_cup_destroyed(remainig_cups: int)-> void:
	if remainig_cups == 0:
		v_box_container_2.show()
		music.play()
		ScoreManager.set_score_for_level(ScoreManager.level_selected, _attempts)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
