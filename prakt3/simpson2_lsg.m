function y = simpson2_lsg( a,b,n )
  h = (b-a)/ n;
  y = exp(-a*a);
  x = a;
  ungerade = true;
  for i = 1:n-1
    x = x + h;
    if ( ungerade )
      y = y + 4.0 * exp(-x*x);
      ungerade = false;
    else
      y = y + 2.0 * exp(-x*x);
      ungerade = true;
    end
  end
  y = y + exp(-b*b);
  y = y*h / 3.0;
end