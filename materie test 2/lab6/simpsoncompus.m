function d = simpsoncompus(f,a,b,m);
y0=f(a);
y2m=f(b);
h=(b-a)/(2*m);
s=0;
for i=1:m-1
    s= s+ 4*f(a+(2*i-1)*h) + 2*f(a+(2 *i)*h);
end;
s=s+4*f(a+(2*m-1)*h);
d=(h/3)*(y0+y2m+s);