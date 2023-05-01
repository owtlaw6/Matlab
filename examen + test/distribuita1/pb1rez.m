f=@(x) x^5+x-1;
df=@(x) 5*x^4+1;
rez = fzero(f,0)
xc = pb1(f,df,0,10)