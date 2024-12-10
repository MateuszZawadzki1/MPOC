clc;
clear;
pkg load image;
close all;

I1 = imread('peppers(gaussian).png');
I2 = imread('peppers(salt&pepper).png');
I3 = imread('peppers(speckle).png');
i4 = imread('peppers(poisson).png');

h3 = fspecial('average', 3);  % 3x3
h5 = fspecial('average', 5);  % 5x5
h7 = fspecial('average', 7);  % 7x7

filtered_gaussian_3 = imfilter(I1, h3);
filtered_saltpepper_3 = imfilter(I2, h3);
filtered_poisson_3 = imfilter(I4, h3);

filtered_speckle_3 = imfilter(I3, h3);

filtered_gaussian_5 = imfilter(image_gaussian, h5);
filtered_poisson_5 = imfilter(image_poisson, h5);
filtered_saltpepper_5 = imfilter(image_saltpepper, h5);
filtered_speckle_5 = imfilter(image_speckle, h5);

filtered_gaussian_7 = imfilter(image_gaussian, h7);
filtered_poisson_7 = imfilter(image_poisson, h7);
filtered_saltpepper_7 = imfilter(image_saltpepper, h7);
filtered_speckle_7 = imfilter(image_speckle, h7);

figure;

subplot(4, 3, 1), imshow(filtered_gaussian_3), title('Gauss 3x3');
subplot(4, 3, 2), imshow(filtered_gaussian_5), title('Gauss 5x5');
subplot(4, 3, 3), imshow(filtered_gaussian_7), title('Gauss 7x7');

subplot(4, 3, 4), imshow(filtered_poisson_3), title('Poisson 3x3');
subplot(4, 3, 5), imshow(filtered_poisson_5), title('Poisson 5x5');
subplot(4, 3, 6), imshow(filtered_poisson_7), title('Poisson 7x7');

subplot(4, 3, 7), imshow(filtered_saltpepper_3), title('Salt & Pepper 3x3');
subplot(4, 3, 8), imshow(filtered_saltpepper_5), title('Salt & Pepper 5x5');
subplot(4, 3, 9), imshow(filtered_saltpepper_7), title('Salt & Pepper 7x7');

subplot(4, 3, 10), imshow(filtered_speckle_3), title('Speckle 3x3');
subplot(4, 3, 11), imshow(filtered_speckle_5), title('Speckle 5x5');
subplot(4, 3, 12), imshow(filtered_speckle_7), title('Speckle 7x7');
