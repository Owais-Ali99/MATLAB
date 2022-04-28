function [x, count] = NM(x)

f = @(x) x^2 - 1;
f1 = @(x) 2*x;

count = 0;
maxiter = 100;
errthld = 1e-10;
err = 1;

while err >= errthld & count <= maxiter
    xn = x - f(x)/f1(x);
    err = abs(x-xn);
    x = xn;
    count = count + 1;
end

end
