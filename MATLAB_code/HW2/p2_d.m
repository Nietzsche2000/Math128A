p = factorial(9);
p_star = 3 * sqrt(2 * pi) * (9^9 / exp(9));

difference = p - p_star;
abs_error = abs(difference);
relative_error = abs_error / p;

display(difference)
display(abs_error)
display(relative_error)
