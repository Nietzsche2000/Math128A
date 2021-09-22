function sn = compute_s_delta(delta)
    sn = 0;
    term = 1/1;
    i = 1;
    while term >= delta
        sn = sn + term;
        i = i + 1;
        term = 1/i;
    end
end
