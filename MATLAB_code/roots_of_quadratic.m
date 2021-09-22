function [r1, r2] = roots_of_quadratic(a,b,c)
    d = sqrt(b^2 - 4*a*c);
    r1 = (- b - d) / (2*a);
    r2 = (- b + d) / (2*a);
end
