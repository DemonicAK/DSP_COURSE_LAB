

clc; close all; clear all; 
% DTFT
pn= 1000;% samples
pt = 1/pn; %sample
w = 0:pt:2*pi;
xn = [1 1 1 1];
N = length(xn);
Xw = zeros(1, length(w));
for n = 0:N-1;
    Xw = Xw+xn(n+1).*exp(-j.*w.*n);
end
subplot(2,1,1);
plot(w,abs(Xw));
ylabel('Magnitude')
xlabel('Frequency')
title('Magnitude vs Frequency plot for DTFT')
subplot(2,1,2);
plot(w, angle(Xw));
ylabel('Phase')
xlabel('Frequency')
title('Phase vs Frequency plot for DTFT')





