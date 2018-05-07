%Program name: PMatrix Practice
%Authored by: Michael Gerrard Guerrero , Colton Collins
%Last Modified: 01.27.17
Mat = zeros(16,16);
Index = 0;
for row=1:16
       for col=1:16;
           Index = Index +1;
           Mat(row, col) = Index;
       end
end
Image = mat2gray(Mat);
imshow(Image);