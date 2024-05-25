shader_type spatial;

uniform sampler2D normalmap_tex: repeat_enable, filter_linear;
uniform sampler2D normalmap2_tex: repeat_enable, filter_linear;

uniform vec3 albedo: source_color;
uniform float metallic:hint_range(0.0, 1.0) = 0.0;
uniform float roughness:hint_range(0.0, 1.0) = 0.0;

uniform vec2 direction1 = vec2(1.0, 0.0);
uniform float scroll_speed1: hint_range(0.0, 1.0) = 0.03;

uniform vec2 direction2 = vec2(0.0, 1.0);
uniform float scroll_speed2: hint_range(0.0, 1.0) = 0.01;

void fragment() {
	
	vec2 offset1 = direction1 * scroll_speed1 * TIME;
	vec2 offset2 = direction2 * scroll_speed2 * TIME;
	
	vec4 normal = texture(normalmap_tex, UV + offset1);
	vec4 normal2 = texture(normalmap2_tex, UV + offset2);
	
	NORMAL_MAP = mix(normal.rgb, normal2.rgb, 0.5);
	
	ALBEDO = albedo;
	METALLIC = metallic;
	ROUGHNESS = roughness;
	
	// vec3 normal = texture(normalmap_tex, UV).rgb;
	// NORMAL_MAP = normal;
}
