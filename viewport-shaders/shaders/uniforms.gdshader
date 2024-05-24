shader_type canvas_item;

group_uniforms FirstGroup;
uniform float my_float:hint_range(1.0, 10.0) = 5.0;
uniform vec4 my_vector = vec4(0.0);

group_uniforms FirstGroup.SneakySneaky;
uniform vec4 my_color: source_color;
group_uniforms;



void vertex() {
	// Called for every vertex the material is visible on.
	if (VERTEX.y < 0.0 && VERTEX.x < 0.0) {
		vec2 circle = vec2(cos(TIME*my_float) * 100.0, sin(TIME*my_float) * 100.0);
		VERTEX += vec2(-200.0, -50.0) + circle;
	}
	
}

void fragment() {
	vec4 color1 = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 color2 = vec4(0.0, 1.0, 0.0, 1.0);
	
	float mix_percent = ((sin(TIME)*my_float) + 1.0) * 0.5;
	vec4 output_color = mix(color1, color2, mix_percent);
	
	// COLOR = texture(TEXTURE, UV / 2.0);
	
	// COLOR = texture(TEXTURE, UV) * output_color;
	COLOR = texture(TEXTURE, UV) * my_color;
	
	// COLOR = output_color
	// COLOR += vec4(sin(TIME));
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
