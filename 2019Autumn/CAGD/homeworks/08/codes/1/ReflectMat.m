function M = ReflectMat(n,d)
    n = n / sqrt(dot(n,n));
    M = [
    1-2*n(1)*n(1) -2*n(2)*n(1) -2*n(3)*n(1) -2*d*n(1)
    -2*n(1)*n(2) 1-2*n(2)*n(2) -2*n(3)*n(2) -2*d*n(2)
    -2*n(1)*n(3) -2*n(2)*n(3) 1-2*n(3)*n(3) -2*d*n(3)
    0   0   0   1
    ];
end
