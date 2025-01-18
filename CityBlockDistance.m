A = zeros(100, 100);  % Create a 100x100 matrix initialized to zero (black background)
Cx = 50;              % Set the center of the circle on the x-axis
Cy = 50;              % Set the center of the circle on the y-axis
Radius = 20;          % Set the radius of the circle

for i= 1:100
    for j= 1:100
        if abs(i-Cx) + abs(j-Cy)  <= Radius
            A(i,j) = 255;
        end
    end
end
imshow(A);