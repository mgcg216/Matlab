Image =imread('camerman.tiff');
h = butter(Image,10,2);
ph=fftshift(fft2(h));
ch=ph.*lp;
chpi=ifft2(ch);
%I2= imfilter(Image,ph);
%figure
ifftshow(chpi)