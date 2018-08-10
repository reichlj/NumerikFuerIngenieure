function [ FA FB FS ] = lagerkraft( winkel, qa )
%LAGERKRAFT Loese Gleichungssystem
%   [FA FB FS] = lager(winkel, qa)
%                winkel : in Grad
%                qa     : 
F = lager(winkel,qa);
FA(1)= F(1);
FA(2)= F(2);
FB(1)= F(3);
FB(2)= F(4);
FS(1)= F(5);
FS(2)= F(6);
end