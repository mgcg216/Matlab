%Program name: Matlab Project 2
%Authored by: Michael Gerrard Guerrero 
%Last Modified: 02.28.17

x=linspace(0,20,21);

y1=(x./(x+1)).^x;
plot(x,y1);

y2=(x./(x+1)).^x+(x./(x+1));
figure,
plot(x,y2);

y3=0.9.^x;
figure,
plot(x,y3);

y4=0;
figure,
plot(x,y4);