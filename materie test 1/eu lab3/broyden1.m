function x=broyden1(F,x0,k)
x=x0;
n=length(x0);
A=eye(n,n);
for i=1:k
    y=x;
    x=x-inv(A)*F(x);
    delta=x-y;
    Delta=F(x)-F(y);
    A=A+((Delta-A*delta)*delta')/(delta'*delta);
end