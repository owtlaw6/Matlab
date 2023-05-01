function x = gradientconjugat(x,f,grad,k)
d = -grad(x);
r = -grad(x);
for i=1:k
    R=r;
    g = @(a)f(x + a * d);
    a = fminbnd(g, 0, 1);
    x = x + a * d;
    r = -grad(x);
    b = (r' * r)/(R' * R);
    d = r + b * d;
end