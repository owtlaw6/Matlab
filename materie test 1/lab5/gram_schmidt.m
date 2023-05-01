function[q, r] = gram_schmidt(A)
[m,n] = size(A);
for j = 1:n
    y = A(:,j);
    for i = 1:(j-1)
        r(i,j) = q(:,i)' * A(:,j);
        y = y - r(i,j) * q(:,i);
    end
    r(j,j) = norm(y);
    q(:,j) = y / r(j,j);
end