function [ x ] = no_of_sol( a,b )
tic
[m n]=size(a);
r1=mat_rank(a);
r2=mat_rank([a b]);
if(r1==r2)
    x=1;
    if(r1==n)
        disp('Consistence(1) with Unique solution');
    elseif (r1<n)
        disp('Consistence(1) with Infinite solution');
    end
elseif(r1<r2)
    x=0;
    disp('In consistence(0) Zero Solution');
end
toc
end

