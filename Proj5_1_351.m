clear all

wc=pi/4;
M= 10; %order
n=(-M:1:M);
imp=sinc(n)-wc/pi*sinc(wc*n/pi);
w=hamming(2*M+1);
hw=imp.*w';
[ham, n] = freqz(hw,1);
plot(n,-20*log10(max(abs(ham))./abs(ham)));
title('Freqency Response'); ylabel('Gain, dB');
%determine outputof HPF with x(n)= cos(pi/6n);
n=(0:100);
inp2=cos(pi*n/6);
xhw=conv(inp2,hw);
figure, subplot(2,1,1), stem(n, inp2);
subplot(2,1,2), stem(0:length(xhw)-1, xhw);
%determine with cos(pin/3)
inp3=cos(pi*n/3);
x2hw=conv(inp3,hw);
figure, subplot(2,1,1), stem(n, inp3);
subplot(2,1,2), stem(0:length(xhw)-1, x2hw);

