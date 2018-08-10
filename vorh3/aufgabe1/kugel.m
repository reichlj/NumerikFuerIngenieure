function [ Vol, Fl ] = kugel( r )
%KUGEL Volumen und Fläche einer Kugel
  Vol = 4/3*pi*r.^3;
  Fl = 4*pi*r.*r;
end

