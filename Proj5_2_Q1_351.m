clear all, close all

T=2;
fs=360;
Fs=0.5;
fc=60;
%wc=2*pi*fc/fs;
wc=pi/3;
Wc=2/T*tan(wc/2);

B=47000;

num=[1 0 wc^2];
den=[1 B/360 wc^2];

[numd dend] = bilinear(num,den,Fs);
[notch n]=freqz(numd,dend);
n = n/pi;
plot(n,-20*log10(max(abs(notch))./abs(notch)));
title('Freqency Response'); ylabel('Gain, dB');

load('ecg.mat');
plot(0:length(noise_ecg)-1, noise_ecg);
legend('Noise');
t=1024;
N=fft(noise_ecg,t);
figure; subplot(2,1,1)
k=0:1:t-1;
plot(k*360/1024,abs(N))
title('Magnitude')
xlabel('Frequency index k'); ylabel('Magnitude');
 subplot(2,1,2)
plot(k*360/1024,angle(N))
title('Phase');
xlabel('Frequency index k'); ylabel('Phase');

figure,
out=filter(numd,dend,noise_ecg);
plot(0:length(out)-1, out);
legend('Filtered');
figure,
subplot(2,1,1)
plot(k*360/1024,abs(out))
title('Magnitude')
xlabel('Frequency index k'); ylabel('Magnitude');
 subplot(2,1,2)
plot(k*360/1024,angle(out))
title('Phase');
xlabel('Frequency index k'); ylabel('Phase');
