clear all

%b=[1 -3 3 -1];
%a=[1.857864376 -3.254833996 2.25988463 -0.627416998];
%a=[4.2884 -1.5342 1.6488 -0.1784];

T=2;
fs = 1/T;
wc = pi/4;
Wc= 2/2*tan(wc/2);
b = [1 0 0 0];
a = [1 2*Wc 2*Wc^2 Wc^3];
st=filt(b,a,T)

[numd dend] = bilinear(b,a,fs);
[butter n]=freqz(numd,dend);
n = n/pi;
plot(n,-20*log10(max(abs(butter))./abs(butter)));
title('Freqency Response'); ylabel('Gain, dB');


%determine outputof HPF with x(n)= cos(pi/6n);
n=(0:100);
inp2=cos(pi*n/6);
%xhw=conv(inp2,h);
xhw=filter(numd,dend,inp2);
figure, subplot(2,1,1), stem(n, inp2);
subplot(2,1,2), stem(0:length(xhw)-1, xhw);
%determine with cos(pin/3)
inp3=cos(pi*n/3);
%x2hw=conv(inp3,h);
x2hw=filter(numd,dend,inp3);
figure, subplot(2,1,1), stem(n, inp3);
subplot(2,1,2), stem(0:length(xhw)-1, x2hw);

