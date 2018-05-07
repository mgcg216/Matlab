%Program of Steganography Using LSB substitution%
%- Colton Collins, Michael Gerrard Guerroro
% ECE 595 Image Processing

x = imread('RGB_iris.tiff');         % cover message
hide = imread('caribou.tiff');    % hidden message image
n = input('Enter no of LSB to sub: ');

img = hide;
s = size(img)
rand('seed',0)
map = zeros(s(1),s(2));
for i = 1:2.1:s(1)*s(2) %can use much time if stepsize is 2 since then every pixel has to be exchanged
    while true %find two unswitched pixels
        a = floor(rand(1,2) .* [s(1),s(2)] + [1,1]);
        b = floor(rand(1,2) .* [s(1),s(2)] + [1,1]);
        if map(a(1),a(2)) == 0 && map(b(1),b(2)) == 0
            break
        end
    end
    %switch
    map(a(1),a(2)) = 1;
    map(b(1),b(2)) = 1;
    t = img(a(1),a(2),:);
    img(a(1),a(2),:) = img(b(1),b(2),:);
    img(b(1),b(2),:) = t;
end
image(img)
imwrite(img,'output.tiff')

y = imread('output.tiff');    % message image

S = uint8(bitor(bitand(x,bitcmp(2^n-1,'uint8')),bitshift(y,n-8))); %Stego
E = uint8(bitand(255,bitshift(S,8-n))); %Extracted

origImg = double(y);   %message image
distImg = double(E);   %extracted image

img = real(E);
%img = imread(distImg);
s = size(img);
rand('seed',0)
map = zeros(s(1),s(2));
for i = 1:2.1:s(1)*s(2) %can use much time if stepsize is 2 since then every pixel has to be exchanged
    while true %find two unswitched pixels
        a = floor(rand(1,2) .* [s(1),s(2)] + [1,1]);
        b = floor(rand(1,2) .* [s(1),s(2)] + [1,1]);
        if map(a(1),a(2)) == 0 && map(b(1),b(2)) == 0
            break
        end
    end
    %switch
    map(a(1),a(2)) = 1;
    map(b(1),b(2)) = 1;
    t = img(a(1),a(2),:);
    img(a(1),a(2),:) = img(b(1),b(2),:);
    img(b(1),b(2),:) = t;
end
image(img)
imwrite(img,'output2.tiff')

subplot(2,3,1);imshow(x);title('1.Cover image')
subplot(2,3,2);imshow(hide);title('2.Message to be hide')
subplot(2,3,3);imshow(y);title('3.Encrypted Message to be hide')
subplot(2,3,4);imshow((abs(S)),[]);title('4.Stegnographic image')
subplot(2,3,5);imshow(real(E), []); title('5.Extracted image')
subplot(2,3,6);imshow('output2.tiff');title('6.Decrypted Extracted Image')


figure(5),imhist(x); title('Histogram of cover image')
figure(6),imhist(S); title('Histogram of transformed stego image')