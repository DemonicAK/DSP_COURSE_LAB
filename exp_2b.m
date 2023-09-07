
clc; close all; clear all;

x=[1,2,3,4,5,6,7,8,9];
N=length(x);
n=0:N-1;

n1=mod(n-3,N);
y1=x(n1+1);


n2=mod(n+3,N);
y2=x(n2+1);

subplot (3,1,1);
stem(n,x);
title('original sequence');

subplot(3,1,2);
stem(n,y1);
title('right shift');

subplot(3,1,3);
stem(n,y2);
title('left shift');

