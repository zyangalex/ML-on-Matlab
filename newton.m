function [C] = newton(xl,xu,es)

col = [];
eac = 1;
xrold = inf;
ea = 1;
x0 = xl;
col = x0;
while ea >= es
    x1 = x0-(f(x0)/(df(x0)));
    ea = abs((x1-x0)/x1);
    col = [col; x1];
    eac = [eac; ea];
    x0 = x1;
end
num = [1:length(col)];
num = num.';
C = {num, col, eac};
end
    
    