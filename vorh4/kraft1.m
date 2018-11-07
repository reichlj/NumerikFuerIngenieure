function f = kraft1(mu,m,w)
  f = m*mu ./ ( mu*sind(w)+cosd(w) );
end