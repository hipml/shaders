shader_type canvas_item;

// uniform float mix_pct: hint_range(0.0, 1.0) = 1.0;

void fragment() {
	vec4 input_color = texture(TEXTURE, UV);
	float average_rgb = (input_color.r + input_color.g + input_color.b) / 3.0;
	// vec4 output_color = mix(vec4(average_rgb), input_color, mix_pct);
	
	COLOR = vec4(vec3(average_rgb), input_color.a);
}
