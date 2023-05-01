function xmin=gss(f,a,b,k)
g=(sqrt(5)-1)/2;
x1=a+(1-g)*(b-a);
x2=a+g*(b-a);
f1=f(x1);
f2=f(x2);
for i=1:k
if f1<f2
b=x2;
x2=x1;
x1=a+(1-g)*(b-a);
f2=f1;
f1=f(x1);
else
a=x1;
x1=x2;
x2=a+g*(b-a);
f1=f2;
f2=f(x2);
end
end
xmin=(a+b)/2;