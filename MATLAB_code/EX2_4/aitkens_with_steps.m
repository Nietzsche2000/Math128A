% CODE FOR PROBLEM 1A FROM EXERCISE 2.5

function pn_hat = aitkens_with_steps(rerr, p0, iter)
    if iter == 0
        pn_hat = [p0];
    else
        arr = rerr(p0, iter + 2);
        res = [arr(1)];
        for pn = 2:(iter + 1)
            res = [res; compute_aitkens(arr(pn), arr(pn + 1), arr(pn + 2))];
        end
        pn_hat = res;
    end
end


%>> aitkens_with_steps(@ex2_5_1_a, 0.5, 5)
%
%ans =
%
%   0.500000000000000
%   0.257613210715749
%   0.257535832326668
%   0.257530660001032
%   0.257530310659602
%   0.257530287139163