function [ xn ] = wurzelx( x )
  xa = 10;
  rfMax = 1;
  i = 0;
  while (i<=50) && (rfMax>1.0e-6)
     i = i + 1;
     xn = 0.5*( xa + x./xa );
     rf = abs( (xn-xa)./xa );
     rfMax = max(rf(:));
     xa = xn;
  end
end