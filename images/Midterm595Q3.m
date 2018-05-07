Image =imread('scan.png');
h = [0 -1 0; -1 5 -1;0 -1 0];

J2= imfilter(Image,h);
h = [0 -1 0; -1 5 -1;0 -1 0];

J= imfilter(J2,h);
%J = histeq(Image)
subplot(2,2,1);imshow(Image);
subplot(2,2,2);imshow(J);
subplot(2,2,3);imhist(Image);
subplot(2,2,4);imhist(J);
