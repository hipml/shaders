shader_type canvas_item;

uniform sampler2D gradient_texture;


void fragment() {
	vec4 input_color = texture(TEXTURE, UV);
	float average_rgb = (input_color.r + input_color.g + input_color.b) / 3.0;
	// vec4 output_color = mix(vec4(average_rgb), input_color, mix_pct);
	
	vec4 gradient_color = texture(gradient_texture, vec2(average_rgb));
	
	
	COLOR = vec4(vec3(gradient_color.rgb), input_color.a);
}
