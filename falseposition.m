function [C] = falseposition(xl,xu,es)

col = [];
ans = [];
eac = [];
xrold = inf;
for i = 0:100
    xr = xu-(f(xu)*(xl-xu))/(f(xl)-f(xu));
    c = f(xr);
    absc = abs(c);
    
    ea = abs((xr-xrold)/xr);
    if ea < es
        break
    end
    if f(xl)*c<0
        xu = xr;
    else
        xl = xr;
    end
    col = [col; xr];
    ans = [ans; f(xr)];
    eac = [eac; ea];
    xrold = xr;
end
p = xr;
col = [col; xr];
num = [1:length(col)];
num = num.';
    ans = [ans; f(xr)];
    eac = [eac; ea];
C = {num, col, eac};
end
    
    