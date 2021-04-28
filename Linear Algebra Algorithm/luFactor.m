function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix
[m,n] = size(A);

if m~=n
    error('Come on shtupid');
end

U = A;
P = eye(m);
L = eye(m);
ptemp = P;

for c = 1:n-1
    [val,r_index] = max(abs(A(c:n,c)));
    for k = c:n
        if val == abs(U(k,c))
            U(c,:) = A(k,:);
            U(k,:) = A(c,:);
            P(c,:) = ptemp(k,:);
            P(k,:) = ptemp(c,:);
        end
    end
    for i = c+1:m
        L(i,c) = U(i,c)/U(c,c);
        U(i,:) = U(i,:)-L(i,c)*U(c,:);
    end
end

end