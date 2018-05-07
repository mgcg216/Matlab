%Program name: myHist
%Authored by: Michael Gerrard Guerrero , Colton Collins
%Last Modified: 02.28.17

%a = input('Enter a side value for a:');

function H = myHist(i,n)
    im = imread(i);
    grey = mat2gray(im);
    grey8 = im2uint8(grey);
    hist =imhist(grey8,n);
    H=stem(hist)
    imshow(grey8);
end
