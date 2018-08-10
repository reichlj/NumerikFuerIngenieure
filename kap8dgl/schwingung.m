function dz_dt = schwingung( t, z )
global k m
% z(1) ist die Auslenkung zur Zeit t
% z(2) ist die Geschwindigkeit zur Zeit t
  dz_dt(1,1) = z(2);
  dz_dt(2,1) = -k/m*z(1);
end