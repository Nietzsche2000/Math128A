% FUNCTION THAT FINDS THE ROOT OF THE EQUATION IN AN INTERVAL WITH TOLERANCE TOL

function rt = bisection_rec(f, a, b, N, TOL)

    % FIND THE MIDPOINT
    p_n = (a + b) / 2;

    % CHECK TOLERANCE
    if abs(p_n - b) < TOL
        rt = p_n;
        return;
    end

    % STOPPING CONDITION
    if N == 0
        rt = p_n;
        return;
    end

    % CHECK SIGN
    if f(p_n) * f(a) > 0
        a = p_n;
    else
        b = p_n;
    end

    % DO RECURSION ON NEW INPUTS
    rt = bisection_rec(f, a, b, N - 1, TOL);
end







