%g = imadjust(f, [low_in high_in], [low_out high_out], gamma);
f=imread('Picture1.png');
%imshow(f);


g = imadjust(f, [ ], [ ], 0.5);
imshow(f), figure, imshow(g)

