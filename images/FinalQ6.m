clear all, close all

x=imread('circles.tif');
x2=imcomplement(x);
x3 = imclearborder(x2,8);
x4 = squeeze(x3(:,:,1));
L=bwlabel(x4);
M=max(L);
ma = max(M); %number of circles
A =[];
for i = 1:ma
   A(i)=sum(M(:) == i); %size of circles 
end
A %size of each element
imshow(x3);