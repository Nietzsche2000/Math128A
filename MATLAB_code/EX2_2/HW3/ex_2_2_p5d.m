function p_n = ex_2_2_p5d(n)
    if n == 0
        p_n = 1;
    else
        p_n = (21 / ex_2_2_p5d(n-1))^0.5;
    end
