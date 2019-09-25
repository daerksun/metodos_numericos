function y = determinante(A)
    n = input("tamaño de la matriz = ");
    for k = 1:n
        for i = k+1:n
            for j = k+1:n
                A(i,j) = A(i,j)-((A(i,k)*A(k,j))/A(k,k));
            end
        end
    end
    y = 1;
    for i = 1:n
        y = y*A(i,i);
    end
end