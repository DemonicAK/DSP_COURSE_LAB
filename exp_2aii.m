
clc; close all; clear all; 
% DFT
N = 8;
jk= 2*pi/N;  %N=4,8,16
wn = 0: jk: jk*(N-1);
xn = [1 1 1 1];
xn1 = [xn zeros(1, N-length(xn))];
Xk=[];
for k=0:N-1;
    Xk(k+1)=0;
    for n = 0:N-1;
    Xk(k+1) = Xk(k+1)+xn1(n+1).*exp(-j*2*pi*k*n/N);
    end
end

subplot (2,1,1);
stem(wn,abs(Xk));
title('magnitude plot of DFT');

subplot(2,1,2);
stem(wn,angle(Xk));
title('Phase plot of DFT');






