% PROBLEM 8A FROM EXERCISE 2.3

function r = ex2_3_p8a(f, p0, p1, tol)
    if abs(f(p1) - 0) < tol
        r = p1;
    else
        p2 = p1 - (f(p1)*(p1 - p0)) / (f(p1) - f(p0));
        r = ex2_3_p8a(f, p1, p2, tol);
    end
end


%>> f = @(x) exp(x) + 2^(-x) + 2*cos(x) - 6
%
%f =
%
%  function_handle with value:
%
%    @(x)exp(x)+2^(-x)+2*cos(x)-6
%
%>> ex2_3_p8a(f, 1.5, 1.75, 1e-5)
%
%ans =
%
%   1.829383662436248