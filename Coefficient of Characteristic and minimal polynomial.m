function [ c ] = mypoly( a )
%%%%%%%%%%%%%%%%%%%%%%%%%%
%http://www.sciencedirect.com/science/article/pii/S0893965905002612
%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
tic
[ss n]=size(a);
if(ss==n)
    c=zeros(1,n+1);
    if (n==1)
        c(1)=1;
        c(2)=-1*a(n,n);
    else
        c(1)=1;
        c(n+1)=power((-1),n)*det(a);
        for m=1:n-1
            com=combntns([1:n],m);
            [m1 n1]=size(com);
            for j=1:m1
                new_a=a;
                for k=1:m
                    new_a(com(j,k),:)=zeros(1,n);
                    new_a(:,com(j,k))=zeros(n,1);
                    new_a(com(j,k),com(j,k))=-1;
                end
                c(n+1-m)=c(n+1-m)+det(new_a);
            end
            c(n+1-m)=power((-1),n)*c(n+1-m);
        end
    end
            
    
else
    error('Matrix must be square');
end
toc
end

