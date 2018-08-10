function darst = a6getPolynomStringV2_lsg(polynom, praefix)
   darst = sprintf('%s%s',praefix,' = ');
   n=length(polynom);
   for k=1:n
       if ( k == 1 && n == 1 )
          term = sprintf('%.1f',polynom(k));
       elseif ( k == 1 && n == 2)
          term = sprintf('%.1f*x',polynom(k));
       elseif ( k == 1 )
          term = sprintf('%.1f*x^%.0f',polynom(k),n-k);
       elseif ( k == n-1 )
          term = sprintf('%+.1f*x',polynom(k));           
       elseif ( k == n )
          term = sprintf('%+.1f',polynom(k));           
       else
          term = sprintf('%+.1f*x^%.0f',polynom(k),n-k);           
       end
       darst = sprintf('%s%s',darst,term);
   end
end