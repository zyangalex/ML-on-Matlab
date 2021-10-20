function compare
C1 = bisection(0, 1, 0.0001);
C2 = falseposition(0, 1, 0.0001);
C3 = newton(0, 1, 0.0001);
C4 = fixedpoint(0, 1, 0.0001);
C = [C1, C2, C3, C4];

plot(C1{1}, C1{3}, C2{1}, C2{3}, C3{1}, C3{3}, C4{1}, C4{3})
legend('bisection', 'false position', 'fixed point', 'Newton Raphson')
xlabel('Iteration')
ylabel('Ea')

end