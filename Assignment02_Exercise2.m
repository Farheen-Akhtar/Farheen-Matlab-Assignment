% Step 1: Read the input image
img = imread('image_1.png');  % Replace with the path to your image

% Step 2: Determine the type of the image
if ismatrix(img) % Grayscale or binary image
    if max(img(:)) == 1
        disp('The image is binary.');
    else
        disp('The image is grayscale.');
    end
elseif size(img, 3) == 3
    disp('The image is RGB.');
else
    disp('Unknown image type.');
end

% Step 3: Analyze the histogram to check for issues
figure;
imhist(img);
title('Histogram of the Image');

% Check for brightness/contrast issues by inspecting histogram
minValue = min(img(:));
maxValue = max(img(:));

if maxValue == 255 && minValue == 0
    disp('The image has normal contrast.');
elseif maxValue < 255 && minValue < 255
    disp('The image may be over-dark (low brightness).');
elseif maxValue > 0 && minValue > 0
    disp('The image may be over-bright (high brightness).');
else
    disp('The image has low contrast.');
end

% Step 4: Image enhancement if necessary
if maxValue < 255 || minValue < 255
    disp('Enhancing image brightness and contrast.');
    
    % Enhance brightness and contrast using contrast-limited adaptive histogram equalization (CLAHE)
    if size(img, 3) == 3 % RGB image
        imgEnhanced = rgb2lab(img); % Convert to Lab color space
        imgEnhanced(:,:,1) = adapthisteq(imgEnhanced(:,:,1)); % Enhance the L channel
        imgEnhanced = lab2rgb(imgEnhanced); % Convert back to RGB
    else
        % For grayscale or binary, apply histogram equalization
        imgEnhanced = histeq(img);
    end
    
    % Display the enhanced image
    figure;
    imshow(imgEnhanced);
    title('Enhanced Image');
else
    disp('No enhancement needed. The image has good contrast.');
end
