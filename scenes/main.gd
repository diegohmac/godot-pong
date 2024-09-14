extends Sprite2D

var score := [0,0] # Player x CPU score
const PADDLE_SPEED := 500

func _ready() -> void:
	var a = 0.01
	var b = 0.02
	var c = a + b
	print(a)
	print(b)
	print(c)
	print(c == 0.03)

func _on_ball_timer_timeout() -> void:
	$Ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	score[1] += 1
	$HUD/CPUScore.text = str(score[1])
	$BallTimer.start()

func _on_score_right_body_entered(body: Node2D) -> void:
	score[0] += 1
	$HUD/PlayerScore.text = str(score[0])
	$BallTimer.start()
