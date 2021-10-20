
% Find the roots of using Secant Method
% func --> function is taken by user
% like @(x)(sin(x)) or @(x)(x^2 + x - 1) or any other function 
% but use the same format i.e. use paranthesis as used above with '@' and 'x'
% maxerr --> Maximum Error in finding Root

clc; 
clear;
maxiter = 100; % max number of iteration before get the answer
f = input('Enter Function in terms of x: ');
xn_2 = input('Ener Lower Limit: ');
xn_1 = input('Ener Upper Limit: ');
maxerr = input('Enter Maximum Error: ');

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


% If you have any question
% Don't hesitate to contact
% mukhtar_057@hotmail.com 