function [ qw ] = wurzel( x )
  xa = 10;
  rf = 1;
  i = 0;
  while (i<=50) && (rf>1.0e-6)
     i = i + 1;
     xn = 0.5*(xa+x/xa);
     % rf = abs((xn-xa)/xa)
     rf = (xn-xa)/xa; 
     if (rf < 0)
        rf = -rf;
     end
     xa = xn;
  end
  qw = xn;
end