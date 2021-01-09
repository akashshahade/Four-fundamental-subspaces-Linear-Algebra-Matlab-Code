clc
clear 

A=[0 2 3 4;0 6 7 8;0 10 11 12].';
% Bases of four fundamental vector spaces associated
% with the matrix A.
% cs- basis of the column space of A
% ns- basis of the nullspace of A
% rs- basis of the row space of A
% lns- basis of the left nullspace of A
[V, pivot] = rref(A);
r = length(pivot);
cs = A(:,pivot);
ns = null(A,'r');
rs = V(1:r,:)';
lns = null(A','r');