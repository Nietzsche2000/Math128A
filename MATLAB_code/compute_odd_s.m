function sn = compute_odd_s(n)
    sn = 0;
    for i = 1:2:n
        sn = sn + 1/i;
    end
end
