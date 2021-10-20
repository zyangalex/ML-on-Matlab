%% It will take function and initial value as the input of function. 
% You would require to run it in command window as
% secant (@(x)(x^2 + x -9),2,3.5,0.001)
% where x^2 + x -9 is function, [2,3] initial values and 0.001 is maximum
% error tolerable.

function y = secant(f3,xn_2,xn_1,maxerr)

xn = (xn_2*f(xn_1) - xn_1*f(xn_2))/(f(xn_1) - f(xn_2));

disp('xn-2              f(xn-2)                 xn-1              f(xn-1)               xn              f(xn)');
disp(num2str([xn_2 f(xn_2) xn_1 f(xn_1) xn f(xn)],'%20.7f'));
flag = 1; 
while abs(f(xn)) > maxerr
    xn_2 = xn_1;
    xn_1 = xn;
    xn = (xn_2*f(xn_1) - xn_1*f(xn_2))/(f(xn_1) - f(xn_2));
    
    disp(num2str([xn_2 f(xn_2) xn_1 f(xn_1) xn f(xn)],'%20.7f'));
    
    flag = flag + 1;

    if(flag == maxiter)
        break;
    end
end

if flag < maxiter
    display(['Root is x = ' num2str(xn)]);
else
    display('Root does not exist'); 
end
y = xn;


% If you have any question
% Don't hesitate to contact
% mukhtar_057@hotmail.com 