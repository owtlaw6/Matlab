function [x] = gauss_newton(r,dr,x0,n)
x = x0;
for k = 0:n
    