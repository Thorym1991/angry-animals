extends Node2D



#region Var
@onready var marker_2d: Marker2D = $Marker2D
const ANIMAL = preload("res://Scene/animal.tscn")
const MAIN = preload("res://Scene/main.tscn")
#endregion

#region ready
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_animal()

func _enter_tree() -> void:
	SignalHub.on_animal_died.connect(spawn_animal)


#region spwan
func spawn_animal() -> void:
	var animal = ANIMAL.instantiate()
	animal.position = marker_2d.position
	add_child(animal)
	
#endregion
#endregion
#region process
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
#endregion

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Zurück"):
		get_tree().change_scene_to_file("res://Scene/main.tscn")
