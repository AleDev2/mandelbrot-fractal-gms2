// @Description:

window_set_fullscreen(true);

posUniform = shader_get_uniform(shd_malbrot,"pos");

lr = 0.;
ud = 0.;

r = 0.;
l = 0.;

dgx = 0;
dgy = 0;

scaleUniform = shader_get_uniform(shd_malbrot,"scale");
s = 1.0;