% Load your input image (replace 'input_image.jpg' with your image file)
input_image = imread('input_image.jpg');
 
% Convert the image to grayscale (if not already)
if size(input_image, 3) == 3
    input_image = rgb2gray(input_image);
end
 
% Define a spatial filter kernel for edge detection (e.g., Sobel, Prewitt, or custom)
filter_kernel = fspecial('sobel'); % Example: Sobel edge detection filter
 
% Apply spatial filtering to enhance edges
filtered_image = imfilter(input_image, filter_kernel);
 
% Define a threshold for binarization
threshold = 0.2; % Adjust this value as needed
 
% Binarize the filtered image based on the threshold
binary_image = filtered_image > threshold;
 
% Perform morphological operations to clean up the binary image (optional)
se = strel('disk', 3); % Adjust the structuring element size as needed
binary_image_cleaned = imopen(binary_image, se);
 
% Display the original, filtered, and segmented images
figure;
subplot(1, 3, 1);
imshow(input_image);
title('Original Image');
 
subplot(1, 3, 2);
imshow(filtered_image);
title('Filtered Image (Enhanced Edges)');
 
subplot(1, 3, 3);
imshow(binary_image_cleaned);
title('Segmented Image');
 
% You can save the segmented image using imwrite if needed
% imwrite(binary_image_cleaned, 'segmented_image.jpg');
 
% Adjust filter kernel, threshold, and morphological operations as needed for your specific image and segmentation requirements.
  





