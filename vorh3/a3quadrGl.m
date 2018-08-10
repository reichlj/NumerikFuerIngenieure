function [x1,x2] = a3quadrGl(a,b,c)
  %  a*x*x + b*x + c = 0
  diskr = sqrt(b.*b-4*a.*c);
  x1 = ( -b + diskr )./(2*a);
  x2 = ( -b - diskr )./(2*a);
end