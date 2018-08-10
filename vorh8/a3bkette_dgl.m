function dy_dt = a3bkette_dgl( t, y )
  global cm
  % y(1) Auslenkung Masse 1
  % y(2) Auslenkung Masse 2
  % y(3) Geschwindigkeit Masse 1
  % y(4) Geschwindigkeit Masse 2
  dy_dt(1,1) = y(3);   
  dy_dt(2,1) = y(4);   
  dy_dt(3,1) = -2*cm*y(1) + cm*y(2);
  dy_dt(4,1) = -2*cm*y(2) + cm*y(1);
end