// Malbrot Shader.
varying vec2 v_coord;
uniform vec2 pos;
uniform float scale;

void main()
{
	vec2 res = vec2(1280,720);
	vec2 uv = (gl_FragCoord.xy-.5*res.xy)/res.y;//v_coord;
	
	vec4 a = vec4(pos,vec2(scale));
	vec2 s = a.xy+(-uv)*a.zw;
	
	vec2 z = vec2(0.0);
	float itt = 0.0;
	float maxItt = 512.;
	
	for(float i = 0.0; i < maxItt; i++)
	{
		z = vec2(z.x*z.x - z.y*z.y, 2.*z.x*z.y) - s;
		if(length(z)>2.0) break;
		itt++;
	}
	
	vec3 col = vec3(itt/maxItt);
	gl_FragColor = vec4(fract(col),1);
}