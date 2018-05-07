
n=-4:4;
a = (.9).^n;
b = (.9).^(-n);
c = (.9).^(n-2);
subplot(3,1,1); stem(n,a); title('A');
subplot(3,1,2); stem(n,b);title('B');
subplot(3,1,3); stem(n,c);title('C');

nb=-5:10;
u = [0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1];
d = [0 0 0 0 0 5 5 5 0 0 0 0 0 0 0 0];
e = [0 0 0 0 0 0 2 4 6 0 0 0 0 0 0 0];
figure,
subplot(2,1,1); stem(nb,d); title('D');
subplot(2,1,2); stem(nb,e);title('E');