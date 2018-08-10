function t = a3schwingungsdauer( laenge, winkel )
  global k0;
  k0 = sind(winkel/2);
  t  = 4*sqrt(laenge/9.81)*...
       integral(@integrandpendel,0,pi/2);
end

function y = integrandpendel(x)
  global k0;
  y = 1./sqrt( 1-(k0*sin(x)).^2 );
end