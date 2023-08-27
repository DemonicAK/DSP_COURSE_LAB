

clc; close all; clear all; 
% DTFT
pn= 1000;% samples
pt = 1/pn; %sample
w = 0:pt:2*pi;
xn = [1 1 1 1];
N = length(xn);
Xw = zeros(1, length(w));
for jk = 0:N-1;
Xw = Xw+xn(jk+1).*exp(-j.*w.*jk);
end
subplot(611); plot(w,abs(Xw));
ylabel('Magnitude')
xlabel('Frequency')
title('Magnitude vs Frequency plot for DFT')
subplot(612);
plot(w, angle(Xw));
ylabel('Phase')
xlabel('Frequency')
title('Phase vs Frequency plot for DFT')
% DFT
N = 16;
jk= 2*pi/N;  %N=4,8,16
wn = 0: jk: jk*(N-1);
xn = [1 1 1 1];
xn1 = [xn zeros(1, N-length(xn))];


