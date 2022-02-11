// @Description:

shader_set(shd_malbrot);

shader_set_uniform_f(posUniform,lr,ud);
shader_set_uniform_f(scaleUniform,s);

draw_surface(application_surface,0,0);

shader_reset();