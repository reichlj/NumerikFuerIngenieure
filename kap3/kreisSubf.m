function [umf, fl] = kreisSubf(r)
  umf = umfang(r);
  fl  = flaeche(r);
end

function [umf] = umfang(r)
  umf = 2*pi*r;
end

function fla = flaeche(r)
  fla = pi*r.*r;
end