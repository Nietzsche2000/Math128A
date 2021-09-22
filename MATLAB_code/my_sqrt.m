function x = my_sqrt(a, epsilon)

    x = 1;
    while 1
        xnew = (x+a/x)/2;
        deltax = abs(xnew - x);
        x = xnew;
        if deltax < epsilon
            break
        end
    end
end
