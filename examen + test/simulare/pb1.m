function xc=pb1(f,a,b,tol)
fa=f(a);
fb=f(b);
if sign(fa)*sign(fb) >= 0
    error('f(a)f(b)<0 not satisfied!')
end
while (b-a)/2>tol
    c=(a+b)/2;
    fc=f(c);
    if fc == 0
    break;
end
if sign(fc)*sign(fa)<0
    b=c;
    fb=fc;
else
    a=c;
    fa=fc;
end
end
xc=(a+b)/2;

