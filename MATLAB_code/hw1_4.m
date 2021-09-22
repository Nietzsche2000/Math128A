% CODE FOR HW1 PROBLEM 4

f = @(n) 1.648*10^6 <= factorial(n+1) / (0.5)^(n+1);

val = 1;

while f(val) ~= 1
    val = val + 1;
end
   
fprintf('%d\n', val);
    
