function [ x ] = GEM( a,b )
clc;
a
b
tic
noofsol=no_of_sol(a,b);
timevar1=toc;
if (noofsol==1)
    tic
    ab=[a b]
    [m n]=size(ab);
    Ech_a=EchForm(ab);
    x=zeros(1,m)
    for s=m:-1:1
        c=0;
        for k=2:m
            c=c+Ech_a(s,k)*x(k)
        end
        x(s)=(Ech_a(s,n)-c)/Ech_a(s,s)
    end
    x=x';
    timevar=toc+timevar1
elseif(noofsol==0)
    tic
    disp('No Solution Possible')
    timevar=timevar1+toc
elseif (noofsol==inf)
    r=input('Enter the number of solutions you want');
    tic
    ab=[a b]
    [m n]=size(ab);
    Ech_a=EchForm(ab);
    x=zeros(r,n-1);
    free_var=n-1-mat_rank(a);
    for q=1:r
        for e=1:free_var
            x(q,n-e)=2*q*e
        end
        for s=m-1:-1:1
            c=0;
            for k=2:m
                c=c+Ech_a(s,k)*x(q,k)
            end
            x(q,s)=(Ech_a(s,n)-c)/Ech_a(s,s)
        end
    end
    x=x';
    timevar=timevar1+toc
end
end

