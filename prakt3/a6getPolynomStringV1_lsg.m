function darst = a6getPolynomStringV1_lsg(polynom, praefix)
   darst = sprintf('%s%s',praefix,' = ');
   n=length(polynom);
   for k=1:n
       if ( n == 1 )
          term = sprintf('%.1f',polynom(n));
       elseif ( n == 2 )
          if ( k == 1 )
              term = sprintf('%.1f*x',polynom(k));
          else
              term = sprintf('%+.1f',polynom(k));           
          end 
       else 
          if ( k == 1 )
             term = sprintf('%.1f*x^%.0f',polynom(k),n-k);
          elseif ( k == n-1 )
             term = sprintf('%+.1f*x',polynom(k));           
          elseif ( k == n )
             term = sprintf('%+.1f',polynom(k));           
          else
             term = sprintf('%+.1f*x^%.0f',polynom(k),n-k);
          end
       end
       darst = sprintf('%s%s',darst,term);
   end
end
