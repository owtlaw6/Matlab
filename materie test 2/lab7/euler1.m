function [t,y] = euler1(inter,y0,n)
t(1) = inter(1);
y(1) = y0;
h = (inter(2) - inter(1)) / n;
for i=1:n
    t(i+1) = t(i) + h;
    y(i + 1) = eulerstep(t(i), y(i), h);
end
plot(t, y)
function y = eulerstep(t,y,h)
y = y + h * ydot(t,y);
function z = ydot(t,y)
%z = t * y + t ^ 3;
z = 1 / y * y;
%z = 2 * (t + 1) * y;
%z = t^3 / y^2;