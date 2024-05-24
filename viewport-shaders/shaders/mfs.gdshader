shader_type canvas_item;

const float speed = 3.0;

void vertex() {
	// Called for every vertex the material is visible on.
	if (VERTEX.y < 0.0 && VERTEX.x < 0.0) {
		vec2 circle = vec2(cos(TIME*speed) * 100.0, sin(TIME*speed) * 100.0);
		// VERTEX += vec2(-200.0, -50.0) + circle;
	}
	
}

void fragment() {
	vec4 color1 = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 color2 = vec4(0.0, 1.0, 0.0, 1.0);
	
	float mix_percent = ((sin(TIME)*speed) + 1.0) * 0.5;
	vec4 output_color = mix(color1, color2, mix_percent);
	
	// COLOR = texture(TEXTURE, UV / 2.0);
	
	COLOR = texture(TEXTURE, UV) * output_color;
	
	// COLOR = output_color
	// COLOR += vec4(sin(TIME));
}

