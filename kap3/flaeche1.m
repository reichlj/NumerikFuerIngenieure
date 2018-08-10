function [ FL ] = flaeche1( X )
%FLAECHE1 : Kreisfläche für die Elemente von X berechnen
%  [ FL ] = flaeche1( X ) , X : Array mit Radien
%    FL  : Array mit Kreisflächen
  FL = pi*X.*X;
end