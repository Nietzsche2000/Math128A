% CODE FOR PROBLEM 2A FROM EXERCISE 2.4

f = @(x) 1 - 4 * x * cos(x) + 2 * x^2 + cos(2 * x);
df = @(x) -4 * cos(x) + 4 * x * sin(x) + 4 * x - 2 * sin(2 * x);
p0 = 0.5;
tol = 1e-5;
newton(f, df, p0, tol)