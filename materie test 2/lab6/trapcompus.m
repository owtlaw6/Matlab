function int = trapcompus(f,a,b,m)
h = (b - a)/m;
y0=f(a);
ym=f(b);
s = 0;
for i = 1 : m -1 
    s = s + f(a + i*h);
end
int = h/2*(y0+ym+2*s);