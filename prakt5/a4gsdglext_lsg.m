function [dy_dt] = a4gsdglext_lsg( t, y )

global w d w1 A;
% y(1) Auslenkung 
% y(2) Geschwindigkeit

dy_dt(1,1) = y(2);
dy_dt(2,1) = -2*d*y(2)-w*w*y(1)+A*sin(w1*t);

end
