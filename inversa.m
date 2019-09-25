function y = inversa(A)
    n = input("tamaño de la matriz = ");
    b = eye(n,n);
    for k = 1:n
        for j = k+1:n
            A(k,j) = A(k,j)/A(k,k);
        end
        for i = 1:n
            if(1~=k)
                for j = k+1:n
                    A(i,j) = A(i,j)-A(i,k)*A(k,j);
                end
            end
        end
        for j=1:n
            if(i~=k)
                b(k,j) = (b(k,j)/A(k,k));
            end
        end
        for i=1:n
            if(i~=k)
                for j=1:n
                    b(i,j) = b(i,j) - A(i,k)*b(k,j);
                end
            end
        end     
    end
end