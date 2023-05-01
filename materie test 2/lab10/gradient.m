function x = gradient(f, x, grad, k)
  for i=1:k
    v = grad(x);
    g = @(s) f(x - s * v);
    s = fminbnd(g, 0, 1);
    x = x - s * v;
  end
end