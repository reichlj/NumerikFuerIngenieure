function x = sortiere( x )
  while  true
    sortiert = 1;
    for i=2:length(x)
       if x(i-1) > x(i)
          hilf = x(i);
          x(i) = x(i-1);
          x(i-1) = hilf;
          sortiert = 0;
       end
    end
    if sortiert == 1
       break
    end
  end
end

