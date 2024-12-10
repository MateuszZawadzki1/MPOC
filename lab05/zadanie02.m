clc;
clear;
pkg load image;
close all;

% Rozciaganie histogramu
function I_stretched = stretch_histogram(I, min_val, max_val)
    I = double(I);

    fmin = min(I(:));
    fmax = max(I(:));

    I_stretched = (I - fmin) / (fmax - fmin) * (max_val - min_val) + min_val;
    I_stretched = uint8(I_stretched);
end

I1 = imread("dark_image1.jpg");
I2 = imread("dark_image2.jpg");
I3 = imread("bright_image1.jpg");
I4 = imread("bright_image2.jpg");
I5 = imread("low_contrast_image.jpg");

images = {I1, I2, I3, I4, I5};
titles = {'Image 1', 'Image 2', 'Image 3', 'Image 4', 'Image 5'};

min_val = 0;
max_val = 255;


for i = 1:length(images)
    I = images{i};

    if size(I, 3) == 3
        R_stretched = stretch_histogram(I(:, :, 1), min_val, max_val);
        G_stretched = stretch_histogram(I(:, :, 2), min_val, max_val);
        B_stretched = stretch_histogram(I(:, :, 3), min_val, max_val);

        I_stretched = cat(3, R_stretched, G_stretched, B_stretched);

        I_hsv = rgb2hsv(I);
        I_hsv(:, :, 3) = histeq(I_hsv(:, :, 3) * 255) / 255;
        I_equalized = hsv2rgb(I_hsv);
    else
        I_stretched = stretch_histogram(I, min_val, max_val);

         % Wyrównanie
        I_equalized = histeq(I);
    end

    figure;
    subplot(1, 3, 1);
    imshow(I);
    title([titles{i} ' - Original']);

    subplot(1, 3, 2);
    imshow(I_stretched);
    title([titles{i} ' - Rozciagniete']);

    subplot(1, 3, 3);
    imshow(I_equalized);
    title([titles{i} ' - Wyrównane']);
end

