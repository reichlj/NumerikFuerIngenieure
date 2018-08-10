clear
disp(' 1 Winkel  Bogenmaﬂ    Integral');
for w=eps:pi/18:2*pi
  z=integral(@a2xsin,0,w);
  fprintf('%9.0f%10.4f%12.5f\n',180*w/pi,w,z);
end

disp(' 2 Winkel  Bogenmaﬂ    Integral');
hdxsin = @(x) sin(x)./x;
for w=eps:pi/18:2*pi
  z=integral(hdxsin,0,w);
  fprintf('%9.0f%10.4f%12.5f\n',180*w/pi,w,z);
end

disp(' 3 Winkel  Bogenmaﬂ    Integral');
for w=eps:pi/18:2*pi
  z=integral(@(x) sin(x)./x,0,w);
  fprintf('%9.0f%10.4f%12.5f\n',180*w/pi,w,z);
end
