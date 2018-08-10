function dz_dt = a2schwingung( t, z )
global w0 delta F wext
% z(1) ist die Auslenkung zur Zeit t
% z(2) ist die Geschwindigkeit zur Zeit t
  dz_dt(1,1) = z(2);
  dz_dt(2,1) = -w0*w0*z(1)-2*delta*z(2)+F*cos(wext*t);
end