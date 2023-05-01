function d = dif3pcte(f,x,h)
z = 2 * h;
d = ( f(x + h) - f(x - h) )./ z;