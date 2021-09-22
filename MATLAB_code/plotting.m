

% 'linewidth', 'b', axis equal, grid on, xlabel('...'), ylabel('...'), title('...'), hold on, 'o' markers, help plot, clf

% Plotting functions()

f = @(x) sin(3*x) + 0.5*sin(7*x) - 0.1*x;
g = @(x) sin(3*x) + x.*0.5.*sin(7*x) - 0.1*x;
h = @(x) -1.5*g(x) + f(x)

x = 0:0.01:10; % Vector

plot(x, f(x), 'k', x, g(x), 'b', x, h(x), 'm')

legend('f(x)', 'g(x)', 'h(x)', 'location', 'southwest')







