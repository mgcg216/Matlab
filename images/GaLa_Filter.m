function out = GaLa_Filter(Image)
    subplot(2,2,1); imshow(Image);title('Original Image');
    h = [-1 -1 -1; -1 9 -1; -1 -1 -1];
    I2= imfilter(Image,h);
    subplot(2,2,4); imshow(I2); title('Laplace Filter');
    g = [1 4 7 4 1;4 16 26 16 4; 7 26 41 26 7; 4 16 26 16 4; 1 4 7 4 1]./273;
    I3= imfilter(Image,g);
    subplot(2,2,3); imshow(I3); title('Gaussian Filter');
    l2 = [0 -1 0; -1 4 -1; 0 -1 0];
    I2= imfilter(Image,l2);
    subplot(2,2,2); imshow(I2); title('Laplace');
    out =1;
end