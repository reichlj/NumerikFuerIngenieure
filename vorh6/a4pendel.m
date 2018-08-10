function y = a4pendel(x)
  global k0;
  y = 1./sqrt( 1-(k0*sin(x)).^2 );
end