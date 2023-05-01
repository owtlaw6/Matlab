function [t,y]=exmultistep(inter,y0,n,s)
h=(inter(2)-inter(1))/n;
y(1,:)=y0;
t(1)=inter(1);
for i=1:s-1
t(i+1)=t(i)+h;
y(i+1,:)=trapstep(t(i),y(i,:),h);
f(i,:)=ydot(t(i),y(i,:));
end
for i=s:n
    t(i+1)=t(i)+h;
    f(i,:)=ydot(t(i),y(i,:));
    y(i+1,:)=ab2step(t(i),i,y,f,h);
end
plot(t,y)

function y=trapstep(t,x,h)
z1=ydot(t,x);
g=x+h*z1;
z2=ydot(t+h,g);
y=x+h*(z1+z2)/2;
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
function z=ab2step(t,i,y,f,h)
z=y(i,:)+h*(3*f(i,:)/2-f(i-1,:)/2);
function z=unstable2step(t,i,y,f,h)
z=-y(i,:)+2*y(i-1,:)+h*(5*f(i,:)/2+f(i-1,:)/2);
function z=weaklystable2step(t,i,y,f,h)
z=y(i-1,:)+h*2*f(i,:);
function z=ydot(t,y)
%z=t*y+t^3;
z=t^3/y^2;