A = zeros(100, 100);  % Create a 100x100 matrix initialized to zero (black background)
Cx = 50;              % Set the center of the circle on the x-axis
Cy = 50;              % Set the center of the circle on the y-axis
Radius = 20;          % Set the radius of the circle

% Loop over the entire 100x100 matrix
for i = 1:100
    for j = 1:100
        % Calculate the Euclidean distance between the point (i,j) and the center (Cx,Cy)
        if sqrt((Cx - i)^2 + (Cy - j)^2) <= Radius
            A(i, j) = 255;  % Set the pixel to 255 (white) if it's within the circle
        end
    end
end

imshow(A);  % Show the image after the loops finish
