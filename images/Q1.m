clear all

m =[0 150 0 150 0; 0 150 0 150 0; 0 150 0 150 0; 0 150 0 150 0; 0 150 0 150 0];
h = ones(3,3)/9;
I2= imfilter(m,h)
