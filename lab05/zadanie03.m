clc;
clear;
pkg load image;
close all;


function I_clipped = stretch_histogram_with_clipping(I, min_val, max_val, clip_percent)

    I = double(I);
    total_pixels = numel(I);


    [counts, bins] = imhist(uint8(I), 256);


    cumulative = cumsum(counts);
    fmin = bins(find(cumulative > clip_percent * total_pixels, 1));
    fmax = bins(find(cumulative < (1 - clip_percent) * total_pixels, 1, 'last'));

    I_clipped = (I - fmin) / (fmax - fmin) * (max_val - min_val) + min_val;

    I_clipped(I_clipped < min_val) = min_val;
    I_clipped(I_clipped > max_val) = max_val;

    I_clipped = uint8(I_clipped);
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
clip_percent = 0.05;


for i = 1:length(images)
    I = images{i};


    if size(I, 3) == 3
        R_clipped = stretch_histogram_with_clipping(I(:, :, 1), min_val, max_val, clip_percent);
        G_clipped = stretch_histogram_with_clipping(I(:, :, 2), min_val, max_val, clip_percent);
        B_clipped = stretch_histogram_with_clipping(I(:, :, 3), min_val, max_val, clip_percent);

        I_clipped = cat(3, R_clipped, G_clipped, B_clipped);
    else
        I_clipped = stretch_histogram_with_clipping(I, min_val, max_val, clip_percent);
    end


    figure;
    subplot(1, 2, 1);
    imshow(I);
    title([titles{i} ' - Podstawowy']);

    subplot(1, 2, 2);
    imshow(I_clipped);
    title([titles{i} ' Przyciety i rozciagniety']);
end

