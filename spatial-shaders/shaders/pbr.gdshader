shader_type spatial;

uniform vec3 input_color: source_color;
uniform float metallic_pct:hint_range(0.0, 1.0) = 0.0;
uniform float roughness_pct:hint_range(0.0, 1.0) = 1.0;


void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	METALLIC = metallic_pct;
	ROUGHNESS = roughness_pct;
	ALBEDO = input_color;
}
