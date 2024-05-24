shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;

void fragment() {
	vec4 screen_color = texture(screen_texture, SCREEN_UV);
	
	float average_rgb = (screen_color.r + screen_color.g + screen_color.b) / 3.0;
	// vec4 output_color = mix(vec4(average_rgb), input_color, mix_pct);
	
	COLOR = vec4(vec3(average_rgb), screen_color.a);
}
