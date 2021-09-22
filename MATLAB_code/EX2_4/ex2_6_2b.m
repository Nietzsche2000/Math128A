% CODE FOR PROBLEM 2B FROM EXERCISE 2.6

function r =  ex2_6_2b(a, x0, tol)
    if abs(horner(a, x0) - 0) < tol
        r = x0;
    else
        [y, z] = horner(a, x0);
        x1 = x0 - y / z;
        r = ex2_6_2b(a, x1, tol);
    end
end


%>> a = [1, -2, -12, 16, -40];
%>> ex2_6_2b(a, 5, 1e-5)
%
%ans =
%
%   4.381113444968411