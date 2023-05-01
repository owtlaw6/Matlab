function x=conjgrad(A,b,x0,k)
x=x0;
d=b-A*x0;
r=d;
for i=1:k
    alpha=(r'*r)/(d'*A*d);
    x = x + alpha*d;
    e = r;
    r = r - alpha*A*d;
    beta = (r'*r)/(e'*e);
    d = r + beta*d;
end