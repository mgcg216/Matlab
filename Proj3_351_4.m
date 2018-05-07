clear, clc, close all;

A = [1 -.3 -.04];
B = [1 2];
X = [1, zeros(1,20)];
f = filter(B,A,X)
i = impz(B,A,21)

subplot(2,1,1)
stem(0:20,f)
title('System given')
subplot(2,1,2)
stem(0:20,i)
title('Homework')

for n = 0:20
   y(n+1) = (-19/5*(-.1)^n)+(24/5*(.4)^n);
end
disp(y);