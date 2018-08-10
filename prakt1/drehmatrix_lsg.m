function [ A ] = drehmatrix( w )
%DREHMATRIX Berechne Drehmatrix
A = [cosd(w),-sind(w); sind(w),cosd(w)];
end

