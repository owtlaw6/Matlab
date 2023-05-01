function x=newtond(x,hessiana,grad,k)
for i=1:k
v=-hessiana(x)\grad(x);
x=x+v;
end