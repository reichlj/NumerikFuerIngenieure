clear 
disp(' Winkel   Schwingungsdauer');
for w=0:10:170
  t = a3schwingungsdauer( 9.81, w );
  fprintf('%6d%15.5f\n',w,t);
end
w = 179.99995;
t = a3schwingungsdauer( 9.81, w );
fprintf('%6.0f%15.5f\n',w,t);