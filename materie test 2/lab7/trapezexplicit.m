function [t,y]= trapezexplicit(inter,y0,n,s)
h=(inter(2)-inter(1))/n;
y(1)=y0;
t(1)=inter(1);
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=trapstep(t(i),y(i),h);
end

function y=trapstep(t,x,h)
z1=ydot(t,x);
g=x+h*z1;
z2=ydot(t+h,g);
y=x+h*(z1+z2)/2;

function z=ydot(t,y)
%z=t^3/y^2;
z=t^3/y^2;