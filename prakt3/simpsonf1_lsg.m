function y = simpsonf1_lsg(func, a, b, n )
  h = (b-a)/ n;
  y = func(a);
  x = a;
  for i = 1:n-1
    x = x + h;
    if ( mod(i,2) == 1)
      y = y + 4.0 * func(x);
    else
      y = y + 2.0 * func(x);
    end
  end
  y = y + func(b);
  y = y*h / 3.0;
end