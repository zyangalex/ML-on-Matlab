function C = bisection(xl,xu,es)
format long
Fa = f(xl);
Fb = f(xu);
if abs(Fa) < abs(Fb)
    xr = xl;
else
    xr = xu;
end
ea = abs((xl-xu)/xl)*100;
col = [xr];
ans = [f(xr)];
eac = [ea];
while ea > es
    xrold = xr;
    xr = (xl+xu)/2;
    Fc = f(xr);
    if Fa*Fb > 0
        p = ('Error');
    else 
        ea = abs((xr-xrold)/xr);
        if f(xl)*f(xr)<0
            xu = xr;
        elseif f(xl)*f(xr)>0
            xl = xr;
        else 
            ea = 0;
        end
    end
    col = [col; xr];
    ans = [ans; f(xr)];
    eac = [eac; ea];
end
p = xr;
num = [1:length(col)];
num = num.';
C = {num, col, eac};
end
    
    