%Program name: myHist_run
%Authored by: Michael Gerrard Guerrero, Colton Collins
%Last Modified: 2.28.17
%
clear all

myHist('scan.png',100)
figure,
im = imread('scan.png');
grey = mat2gray(im);
grey8 = im2uint8(grey);
hist =imhist(grey8)
stem(hist)
