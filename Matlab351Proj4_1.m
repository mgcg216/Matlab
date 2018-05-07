clear all

x=rand(1,100);
y=zeros(1,100);
M=100;
N=5;
a=[1 1.6 2.28 1.325 0.68];
b=[0.06 0.19 0.27 -0.26 0.12];

for j = 1:M
w1=0;
    for i = 1:N 
        w1 = a(i).*x(j) + w1;
    end
    for i = 1:N 
        w1 = b(i).*x(j) + w1;
    end
    y(j)=w1;
end    
subplot(3,1,1); 
stem(x);title('x')
subplot(3,1,2);
stem(y);title('filter')
subplot(3,1,3);
stem(y-x);title('difference')

