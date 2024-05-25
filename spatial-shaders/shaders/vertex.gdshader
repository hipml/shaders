shader_type spatial;

uniform vec3 offset = vec3(1.0);

void vertex() {
	//VERTEX += vec3(sin(TIME * offset.x), sin(TIME * offset.y), sin(TIME * offset.z));
	
	// VERTEX *= (sin(TIME * 3.0) + 1.0) * 0.5;
	
	VERTEX.x += sin(TIME * 5.0 + VERTEX.y * 10.0) * 0.01;
}