%Program name: Project1_351
%Authored by: Michael Gerrard Guerrero
%Last Modified: 02.17.17

ay=[1,2,3,4,0,0,0,0,0,0];
bxy=[0,1,2,3,4,5,6,7,8,9];
bx=repmat(bxy,1,3);
by=sin(0.1*3.1415*bx)
b=repmat(by,1,3);
cy=-0.8.^(bx);
c=repmat(cy,1,3);
a=repmat(ay,1,3);
figure
subplot(3,1,1)
stem(a)
subplot(3,1,2)
stem(b)
subplot(3,1,3)
stem(c)