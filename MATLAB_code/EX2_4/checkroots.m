function b = checkroots(roots, val)
    b = 0;
    for x = 1:length(roots)
        if abs(real(roots(x)) - real(val)) < 1e-5
            b = 1;
        end
    end
end
