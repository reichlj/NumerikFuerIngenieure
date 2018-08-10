function [ umf, fl ] = kreis( r )
%KREIS : berechne Umfang und Flaeche eines Kreises
%  [ umf, fl ] = kreis( r ) , r : Kreisradius
%    umf : Kreisumfang
%    fl  : Kreisflaeche
 umf = 2*pi*r;
 fl  = pi*r.*r;
end