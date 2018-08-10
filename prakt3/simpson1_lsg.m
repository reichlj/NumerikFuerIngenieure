function y = simpson1_lsg( a,b,n )
  h = (b-a)/ n;
  y = exp(-a*a);
  x = a;
  for i = 1:n-1
    x = x + h;
    if ( mod(i,2) == 1)
      y = y + 4.0 * exp(-x*x);
    else
      y = y + 2.0 * exp(-x*x);
    end
  end
  y = y + exp(-b*b);
  y = y*h / 3.0;
end