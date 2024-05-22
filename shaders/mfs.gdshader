shader_type canvas_item;

const float speed = 3.0;

void vertex() {
	// Called for every vertex the material is visible on.
	if (VERTEX.y < 0.0 && VERTEX.x < 0.0) {
		vec2 circle = vec2(cos(TIME*speed) * 100.0, sin(TIME*speed) * 100.0);
		VERTEX += vec2(-200.0, -50.0) + circle;
	}
	
}

void fragment() {
	// Called for every pixel the material is visible on.
}

