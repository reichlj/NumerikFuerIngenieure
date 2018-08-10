function dy_dt = schwingungDgl(t, y)
global delta w0;
 dy_dt(1,1)= y(2);
 dy_dt(2,1)= -2*delta*y(2)-w0^2*y(1);
end