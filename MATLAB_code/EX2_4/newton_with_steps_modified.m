% CODE FOR PROBLEM 4A FROM EXERCISE 2.4

function [ret, steps] = newton_with_steps_modified(f, df, ddf, p0, tol, s)
    if abs(f(p0) - 0) < tol
        steps = s;
        ret = p0;
    else
        p0 = p0 - (f(p0) * df(p0) / ((df(p0))^2 - f(p0) * ddf(p0)));
        [ret, steps] = newton_with_steps_modified(f, df, ddf, p0, tol, s + 1);
    end
end


%>> f = @(x) 1 - 4 * x * cos(x) + 2 * x^2 + cos(2 * x);
%df = @(x) -4 * cos(x) + 4 * x * sin(x) + 4 * x - 2 * sin(2 * x);
%ddf = @(x) 8 * sin(x) + 4 * x * cos(x) + 4 - 4 * cos(2 * x);
%>> [r, s] = newton_with_steps_modified(f, df, ddf, 0.5, 1e-5, 1)
%
%r =
%
%    0.7390
%
%
%s =
%
%     3