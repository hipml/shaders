shader_type spatial;

uniform vec3 sphere_color = vec3(1.0);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	ALBEDO = sphere_color;
	ALPHA = 1.0;
}
