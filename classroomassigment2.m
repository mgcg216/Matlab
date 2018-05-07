%Program name: MatlabInClass2
%Authored by: Michael Gerrard Guerrero, Colton Collins
%Last Modified: 02.10.17
%w=imread('cameraman.tif');
%imwrite(w,'nicejpg.jpg');
%imfinfo('cameraman.tif')

c=imread('caribou.tiff');
c2=imresize(imresize(c,1/16),16);
%c3=imresize(imresize(c2,1/2),2);
imshow(c2)
imfinfo('caribou.tiff')
