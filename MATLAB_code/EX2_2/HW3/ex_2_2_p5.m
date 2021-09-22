% PROBLEM 5B FROM EX 2.2
function p_n = ex_2_2_p5(n)
    % BASE CASE
    if n == 0
        p_n = 1;
    else
        p_n = ex_2_2_p5(n-1) -  ((ex_2_2_p5(n-1)^3 - 21) / (3 * (ex_2_2_p5(n-1)^2)));
    end
end


