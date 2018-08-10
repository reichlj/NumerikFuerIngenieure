clear
z1 = input('Zahl 1 : ');
z2 = input('Zahl 2 : ');
z3 = input('Zahl 3 : ');
if ( z1 > z2 ) 
   if ( z1 > z3 )
      max = z1;
   else
      max = z3;
   end
else 
   if ( z2 > z3 )
      max = z2;
   else
      max = z3;
   end
end
fprintf('Maximum = %f\n', max);