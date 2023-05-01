function d = regmijloccompus(f,a,b,m)
h=(b-a)/m;
s=0;
for i=1:m
    s = s + f((a+(i-1)*h+a+i*h)/2);
end;
d = h * s;




