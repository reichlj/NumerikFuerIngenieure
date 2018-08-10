function y = pvalue( a, x )
%PVALUE Polynom mit Koeffizienten a 
%   an der Stellen x auswerten
%   y = pvalue( a, x )

  n = length(a);
  y = 0;
  for k=1:n
    y = y + a(k)*x.^(n-k);
  end

end