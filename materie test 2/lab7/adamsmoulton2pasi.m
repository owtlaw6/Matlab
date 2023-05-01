function [t,y]=predcorr(inter,y0,n,s)
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
    y(i+1,:)=ab3step(t(i),i,y,f,h);
    f(i+1,:)=ydot(t(i+1),y(i+1,:));
    y(i+1,:)=am2step(t(i),i,y,f,h);
end
plot(t,y)
function y=trapstep(t,x,h)
z1=ydot(t,x);
g=x+h*z1;
z2=ydot(t+h,g);
y=x+h*(z1+z2)/2;
function z=ab2step(t,i,y,f,h)
z=y(i,:)+h*(3*f(i,:)-f(i-1,:))/2;
function z=ab3step(t,i,y,f,h)
z=y(i,:)+(h/12)*(23*f(i,:)-16*f(i-1,:)+5*f(i-2,:));
function z=am1step(t,i,y,f,h)
z=y(i,:)+h*(f(i+1,:)+f(i,:))/2;
function z=am2step(t,i,y,f,h)
z=y(i,:)+h/12*(5*f(i+1,:)+8*f(i,:)-f(i-1,:));
function z=ydot(t,y)
%z=t*y+t^3;
z=t^3/y^2;