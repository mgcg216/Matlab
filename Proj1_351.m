%Program name: Project1_351
%Authored by: Michael Gerrard Guerrero, Colton Collins
%Last Modified: 02.17.17

n=[-0.5,0.2,1.0,1.5,-1.5];
no=[-1.5,1.5,1.0,0.2,-0.5];
xa=n-2;
xb=(4-n);
xc=(n+2);
xd=.5*(n+(no));
xe=.5*(n-(no));
figure
subplot(2,3,1)
stem(n,xa)
subplot(2,3,2)
stem(n,xb)
subplot(2,3,3)
stem(n,xc)
subplot(2,3,4)
stem(n,xd)
subplot(2,3,5)
stem(n,xe)
