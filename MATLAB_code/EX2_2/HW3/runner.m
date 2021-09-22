% RUNNING CODE FOR PROBLEM 5

function result = runner(f, act, tol)
    result = 1;
    while abs(f(result) - act) > tol
        result = result + 1;
    end
end


%>> runner(@ex_2_2_p5, 21^(1/3), 1e-5)
%
%ans =
%
%     7
%
%>> runner(@ex_2_2_p5d, 21^(1/3), 1e-5)
%
%ans =
%
%    19

