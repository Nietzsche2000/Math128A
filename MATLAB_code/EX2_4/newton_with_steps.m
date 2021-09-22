% CODE FOR NEWTONS METHOD THAT RETURNS THE ROOT AND ALSO THE NUMBER OF ITERATIONS REQUIRED

function [ret, steps] = newton_with_steps(f, df, p0, tol, s)
    if abs(f(p0) - 0) < tol
        steps = s;
        ret = p0;
    else
        p0 = p0 - (f(p0) / df(p0));
        [ret, steps] = newton_with_steps(f, df, p0, tol, s + 1);
    end
end

% CODE FOR PROBLEM 1 FROM HW 4
%>> f = @(x) 1 - 4 * x * cos(x) + 2 * x^2 + cos(2 * x);
%df = @(x) -4 * cos(x) + 4 * x * sin(x) + 4 * x - 2 * sin(2 * x);
%p0 = 0.5;
%tol = 1e-5;
%>> [r, s] = newton_with_steps(f, df, p0, tol, 1)
%
%r =
%
%    0.7383
%
%
%s =
%
%     9




