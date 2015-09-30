function [flag, L, U, x] = LUdecomp(a,b )
clc;
a;
b;
tic
[m n] = size(a);
L=zeros(n,n);
U=zeros(n,n);
flag=0;
%%%%%%%%%%%%%%%% Condition for LU decomposition %%%%%%%%%%%%%%%%%%%%
for i=1:n
    if (det(a(1:i,1:i))==0)
      flag=0;
      break;
    else
        flag=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if (flag==1)
    for k=1:n
       L(k,k)=1;
       for i=k+1:n
          L(i,k)=a(i,k)/a(k,k);
          for j=k+1:n
             a(i,j)=a(i,j)-L(i,k)*a(k,j);
          end
       end
       for j=k:n
          U(k,j)=a(k, j);
       end
    end
else
    disp('Matrix cannot be LU decomposed')
    L=[];
    U=[];
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if (flag==1)
    v=zeros(1,n);
    for s=1:n
        c=0;
        for k=1:n-1
            c=c+L(s,k)*v(k);
        end
        v(s)=b(s,1)-c;
    end
    v=v';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
    x=zeros(1,n);
    for s=n:-1:1
        c=0;
        for k=2:n
            c=c+U(s,k)*x(k);
        end
        x(s)=(v(s,1)-c)/U(s,s);
    end
    x=x';
else
    x=[];
end
toc
end
