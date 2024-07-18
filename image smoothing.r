 % Load your noisy image (replace 'noisy_image.jpg' with your image file)
noisy_image = imread('noisy_image.jpg');
 
% Convert the image to grayscale (if not already)
if size(noisy_image, 3) == 3
    noisy_image = rgb2gray(noisy_image);
end
 
% Define the standard deviation (sigma) for the Gaussian filter
sigma = 2; % Adjust this value based on the amount of noise
 
% Apply Gaussian smoothing for noise reduction
smoothed_image = imgaussfilt(noisy_image, sigma);
 
% Display the original and smoothed images
figure;
subplot(1, 2, 1);
imshow(noisy_image);
title('Noisy Image');
 
subplot(1, 2, 2);
imshow(smoothed_image);
title('Smoothed Image');
 
% You can save the smoothed image using imwrite if needed
% imwrite(smoothed_image, 'smoothed_image.jpg');
 
% Adjust the sigma value and other parameters as needed for your specific image and noise level.
