 [t,v] = ode45(@a4bremsen,[0,12],300/3.6);
 fprintf('t0  =%6.2f  v0  =%7.3f\n',t(1),v(1))
 fprintf('tend=%6.2f  vend=%7.3f\n',t(end),v(end))
 plot(t,v)
