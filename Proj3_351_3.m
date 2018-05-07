clear, clc, close all;

A=[1 1.6 2.28 1.325 .68];
B=[.06 -.19 .27 -.26 .12];
X=[1, zeros(1,40)];

fo = filter(B,A,X)
a1=[1 .9 .8];
b1=[.3 -.2 .4];
a2=[1 .7 .85];
b2=[.2 -.5 .3];
f1=filter(b1,a1,X)
f2=filter(b2,a2,f1)
f3 = fo - f2;

subplot(3,1,1)
stem(0:40,fo);
title('fourth-order system')
subplot(3,1,2)
stem(0:40,f2);
title('cascade system')
subplot(3,1,3)
stem(0:40,f3);
title('fourth-order, cascade difference')