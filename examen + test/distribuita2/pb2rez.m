f2=@(x)x*x-6*x+5;
spi=pb2(f2,2.5,3,3.5,1)
fminbnd(f2,2.5,3.5)