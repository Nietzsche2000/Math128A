% PROBLEM 6A FROM EXERCISE 2.3

function r = ex2_3_p6a(f, df, p0, tol)
    if abs(f(p0) - 0) < tol
        r = p0;
    else
        p0 = p0 - f(p0) / df(p0);
        r = ex2_3_p6a(f, df, p0, tol);
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
%>> df = @(x) exp(x) - (2^(-x))*log(2) - 2*sin(x)
%
%df =
%
%  function_handle with value:
%
%    @(x)exp(x)-(2^(-x))*log(2)-2*sin(x)
%
%>> ex2_3_p6a(f, df, 1.5, 1e-5)
%
%ans =
%
%   1.829383614494166


% PROBLEM 18 FROM EXERCISE 2.3
%>> f = @(x) 0.5 + (x^2)*0.25 - x*sin(x) - 0.5*cos(2*x)
%
%f =
%
%  function_handle with value:
%
%    @(x)0.5+(x^2)*0.25-x*sin(x)-0.5*cos(2*x)
%
%>> df = @(x) 0.5*x - (sin(x) + x*cos(x)) + sin(2*x)
%
%df =
%
%  function_handle with value:
%
%    @(x)0.5*x-(sin(x)+x*cos(x))+sin(2*x)
%
%>> ex2_3_p6a(f, df, pi/2, 1e-5)
%
%ans =
%
%   1.892489624534230
%
%>> ex2_3_p6a(f, df, 5*pi, 1e-5)
%
%ans =
%
%   1.892789801826626
%
%>> ex2_3_p6a(f, df, 10*pi, 1e-5)
%
%ans =
%
%   1.897842212555557