// @Description:

s = clamp(s+(mouse_wheel_down()-mouse_wheel_up())*.05,0.01,2.);


r = r*.01+.001*(mouse_x-dgx)*mouse_check_button(mb_left);
l = l*.01+.001*(mouse_y-dgy)*mouse_check_button(mb_left);

lr += r;
ud += l;

dgx = mouse_x;
dgy = mouse_y;