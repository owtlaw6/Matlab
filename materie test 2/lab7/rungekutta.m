function [t,y]= rungekutta(inter,y0,n,s)
h=(inter(2)-inter(1))/n;
y(1)=y0;
t(1)=inter(1);
for i=1:n
    t(i+1)=t(i)+h;
    y(i+1)=rungestep(t(i),y(i),h);
end

function y=rungestep(t,x,h)
s1 = ydot(t,x);
s2 = ydot(t + h/2, x + h/2 * s1);
s3 = ydot(t + h/2, x + h/2 * s2);
s4 = ydot(t + h, x + h * s3);
y = x + h/6 * (s1 + 2 * s2 + 2 * s3 + s4);

function z=ydot(t,y)
%z=t^3/y^2;
z=t^3/y^2;