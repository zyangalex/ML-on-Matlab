function [C] = fixedpoint(xl,xu,es)

col = [];
eac = [];
ea = 1;
x0 = xl;
col = x0;
while ea >= es
    x1 = exp(-x0);
    ea = abs((x1-x0)/x1);
    col = [col; x1];
    eac = [eac; ea];
    x0 = x1;
end
num = [1:length(col)];
num = num.';
    eac = [eac; ea];
C = {num, col, eac};
end
    
    