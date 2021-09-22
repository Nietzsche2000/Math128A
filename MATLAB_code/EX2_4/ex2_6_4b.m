% CODE FOR PROBLEM 2.6-4B

function r = ex2_6_4b(f, max_iter, tol)
    roots = [];
    for x = -max_iter:max_iter
        for y = x+1:max_iter
            for z = y+1:max_iter
                new_root = muller(f, x, y, z, tol);
                if checkroots(roots, new_root) ~= 1
                    roots = [roots; new_root];
                end
            end
        end
    end
    r = roots;
end


%>> ex2_6_4b(f, 20, 1e-5)
%
%ans =
%
%  0.583559728491645 - 1.494188006011116i
% -3.548232897979725 - 0.000000000000010i
%  4.381113440754286 + 0.000000000000000i
