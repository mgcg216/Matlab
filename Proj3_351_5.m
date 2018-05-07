clear, clc, close all;

load handel.mat
x = y';
a = 0.7;
% tou = 50e-3;
% tou = 100e-3;
 tou = 500e-3;
D = ceil(tou*Fs);
y(1:D) = x(1:D);
for i = D+1:1:length(x)
    y(i) = a*y(i-D) + x(i);
end
pause(3);
sound(y,Fs);