clear, clc,close all;

x = [1,1,1,1]
h =[6,5,4,3,2,1]
[y, L1, L2] = convol(x,0,3,h,0,5)
xn =[x 0 0 0 0 0]
hn =[h 0 0 0]
subplot(3,1,1)
stem(L1:L2,xn);
title('x[n]')
subplot(3,1,2)
stem(L1:L2,hn);
title('h[n]')
subplot(3,1,3)
stem(L1:L2,y);
title('y[n]')
figure


x = [0:1/3:2]
h = ones(1,5)
[y,L1,L2] = convol(x,0,6,h,-2,2)
xn = [0 0 x 0 0]
hn = [h 0 0 0 0 0 0]
subplot(3,1,1)
stem(L1:L2,xn);
title('x[n]')
subplot(3,1,2)
stem(L1:L2,hn);
title('h[n]')
subplot(3,1,3)
stem(L1:L2,y);
title('y[n]')