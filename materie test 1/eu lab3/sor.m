function x = sor(A,b,x0,omega,k)
x=x0;
D=diag(diag(A));
L=tril(A)-D;
U=triu(A)-D;
for i=1:k
    x = inv(D+L*omega)*((1-omega)*D*x-omega*U*x) + omega*inv(omega*L+D)*b;
end