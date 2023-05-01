function int = simpson(f,x0,x1)
y0=f(x0);
y1=f((x1+x0)/2);
y2=f(x1);
h=x1-x0;
int=h/3*(y0+4*y1+y2);