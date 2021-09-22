% PROBLEM 2

function p1 = ex_2_2(f, p0, num_iter)
    while num_iter > 0
        p1 = f(p0);
        p0 = p1;
        num_iter = num_iter - 1;
    end
end

%>> g2 = @(x) ((x+3-x^4)/2)^(1/2)
%
%g2 =
%
%  function_handle with value:
%
%    @(x)((x+3-x^4)/2)^(1/2)
%
%>> ex_2_2(g2, 1, 4)
%
%ans =
%
%   0.987506429150887
%
%>> g3 = @(x) ((x+3)/(x^2 + 2))^(1/2)
%
%g3 =
%
%  function_handle with value:
%
%    @(x)((x+3)/(x^2+2))^(1/2)
%
%>> ex_2_2(g3, 1, 4)
%
%ans =
%
%   1.123638884713255
%
%>> g4 = @(x) (3*x^4 + 2*x^2 + 3) / (4*x^3 + 4*x - 1)
%
%g4 =
%
%  function_handle with value:
%
%    @(x)(3*x^4+2*x^2+3)/(4*x^3+4*x-1)
%
%>> ex_2_2(g4, 1, 4)
%
%ans =
%
%   1.124123029704334

% PROBLEM 3

