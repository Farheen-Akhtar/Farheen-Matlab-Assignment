f=imread('Picture1.png');
%imshow(f);
g = im2uint8(mat2gray(log(1+double(f))));
imshow(f), figure, imshow(g)
