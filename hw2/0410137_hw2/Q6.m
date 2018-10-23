function L = cholesky(A)
% Step 1: Compute the scalar: £f11=sqrt(a11)
% Step 2: Compute the column vector: l21=a21/£f11
% Step 3: Compute the matrix : A22=l21lT21+L22LT22
% Step 4: Replace A with A22, i.e, A=A22
% Step 5: Repeat from step 1 till the matrix size at Step 4 becomes 1¡Ñ1.
    [m,n] = size(A);
    L = zeros(n,n);
    row=1;
    col=1;
    j=1;
    for i=1:m
        % calculate l11 = sqrt(a11)
        l11 = sqrt(A(1,1));
        L(row,col) = l11;
        if (m~=1)
            l21 = A(j+1:m,1)/l11;
            L(row+1:end,col) = l21;
            A = (A(j+1:m,j+1:m)-l21*l21');
            [m,n]=size(A);
            row=row+1;
            col=col+1;
        end
    end
end