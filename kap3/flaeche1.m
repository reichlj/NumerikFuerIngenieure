function [ FL ] = flaeche1( X )
%FLAECHE1 : Kreisfl�che f�r die Elemente von X berechnen
%  [ FL ] = flaeche1( X ) , X : Array mit Radien
%    FL  : Array mit Kreisfl�chen
  FL = pi*X.*X;
end