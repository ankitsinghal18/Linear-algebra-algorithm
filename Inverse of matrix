function [ inv_a ] = GJM_mat_inv( a )
clc;
tic
m=size(a,1);
ai=padarray(a,[0 m],'post')
ai(:,m+1:2*m)=eye(m)
RRE_a=RREchForm(ai)
inv_a=RRE_a(:,m+1:2*m)
toc
tic
inv(a)
toc

end


