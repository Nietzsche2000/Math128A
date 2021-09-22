% PROBLEM 13A FROM EXERCISE 2.2
function n = ex_2_2_p13(g, p0, tol)
    n = 1;
    while abs(g(p0) - p0) > tol
        p0 = g(p0);
        n = n + 1;
    end
end

