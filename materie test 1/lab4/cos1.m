function y=cos1(x)
b=pi*(0:3)/6;
yb=cos(b);
c=newtondd(b,yb,4);
s=1;
x1=mod(x,2*pi);
if x1>pi
x1 = 2*pi-x1;
s = -1;
end
if x1 > pi/2
x1 = pi-x1;
end
y = s*nested(3,c,x1,b);