% CODE FOR PROBLEM 2.6-2B

function r = find_roots(a, x0, tol, deg)
    roots = [];
    iter = deg;
    while iter > 0
        if iter == 2
            new_root = [(-a(2) + sqrt(a(2)^2 - 4 * a(1) * a(3))) / (2 * a(1)),
                                   (-a(2) - sqrt(a(2)^2 - 4 * a(1) * a(3))) / (2 * a(1))];
            iter = iter - 2;
        else
            new_root = ex2_6_2b(a, x0, tol);
            [a, m] = deconv(a, [1, -new_root]);
            iter = iter - 1;
        end
        roots = [roots; new_root];
    end
    r = roots;
end


%>> a = [1, -2, -12, 16, -40];
%>> find_roots(a, 5, 1e-5, 4)
%
%ans =
%
%  4.381113444968411 + 0.000000000000000i
% -3.548232902240946 + 0.000000000000000i
%  0.583559728636268 + 1.494188016951055i
%  0.583559728636268 - 1.494188016951055i