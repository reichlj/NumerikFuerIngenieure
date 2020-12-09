function [dx_dt] = a6_dgl(t,x)
  global w w0 d
  
  if x(1) > 0
      vz = 1;
  elseif x(1) < 0
      vz = -1;
  else
      vz = 0;
  end
  dx_dt(1,1) = x(2);
  dx_dt(2,1) = -d*vz*x(2)^2 - w0*w0*x(1) + sin(w*t);
end