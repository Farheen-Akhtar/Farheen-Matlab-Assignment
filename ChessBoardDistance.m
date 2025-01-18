A = zeros(100,100)
Cx = 50
Cy = 50
Radius = 20

for i= 1:100
    for j= 1:100
        if max(abs(i-Cx),abs(j-Cy)) <= Radius
            A(i,j) = 255;
        end
    end
end
imshow(A);