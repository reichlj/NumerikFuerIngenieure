function y = simpsonf2_lsg(func,a,b,n )
  h = (b-a)/ n;
  y = func(a);
  x = a;
  ungerade = true;
  for i = 1:n-1
    x = x + h;
    if ( ungerade )
      y = y + 4.0 * func(x);
      ungerade = false;
    else
      y = y + 2.0 * func(x);
      ungerade = true;
    end
  end
  y = y + func(b);
  y = y*h / 3.0;
end