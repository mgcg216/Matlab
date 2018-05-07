clear all, close all

x = imread('flowers.tiff');
R=x(:,:,1);
G=x(:,:,2);
B=x(:,:,3);
Rh=histeq(R);
Gh=histeq(G);
Bh=histeq(B);
x2(:,:,1)=Rh;
x2(:,:,2)=Gh;
x2(:,:,3)=Bh;
map=colormap x;
x3=ind2rbg(x2,map);
imshow(x2);
