function dy_dt = a3akette_dgl( t, y )
  global cm
  % y(1) Auslenkung Masse 1
  % y(2) Geschwindigkeit Masse 1
  % y(3) Auslenkung Masse 2
  % y(4) Geschwindigkeit Masse 2
  dy_dt(1,1) = y(2);   
  dy_dt(2,1) = -2*cm*y(1) + cm*y(3);
  dy_dt(3,1) = y(4); 
  dy_dt(4,1) = -2*cm*y(3) + cm*y(1);
end