function [A] = RREchForm(A)
clc;
A
tic
[m,n] = size(A);

i = 1; j = 1;
cl_in = [];
while (i <= m) && (j <= n)
   [p,k] = max(abs(A(i:m,j))) 
   k = k+i-1;
   if (p <= 0)
      A(i:m,j) = zeros(m-i+1,1)
      j = j + 1
   else
      cl_in = [cl_in j];
      A([i k],j:n) = A([k i],j:n)
      A(i,j:n) = A(i,j:n)/A(i,j)
      for k = [1:i-1 i+1:m]
         A(k,j:n) = A(k,j:n) - A(k,j)*A(i,j:n)
      end
      i = i + 1
      j = j + 1
   end
end
toc
end

