f=imread('Xray.png');
% Negative Image
g=imcomplement(f);
imshow(f),figure,imshow(g);
