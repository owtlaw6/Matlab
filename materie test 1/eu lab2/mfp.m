function xc=mfp(f,a,b,k)
if f(a)*f(b) >= 0
error('(a)f(b)<0 not satisfied!')
end
for i=1:k
    c = (b*f(a)-a*f(b))/(f(a)-f(b));
    if (f(c) == 0) 
        break;
    end
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end
xc = (b*f(a)-a*f(b))/(f(a)-f(b));