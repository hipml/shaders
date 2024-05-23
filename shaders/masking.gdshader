shader_type canvas_item;

uniform sampler2D mask_tex;

void fragment() { 
	vec4 mask_color = texture(mask_tex, UV);
	vec4 original_color = texture(TEXTURE, UV);
	vec4 output_color;
	
	if (original_color.a > 0.0) {
		COLOR.a = mask_color.r;
	}
	
	//COLOR = output_color;
}