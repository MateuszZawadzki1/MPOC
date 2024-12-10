clc;
clear;
close all;

I1 = imread("dark_image1.jpg");
I2 = imread("dark_image2.jpg");
I3 = imread("bright_image1.jpg");
I4 = imread("bright_image2.jpg");
I5 = imread("low_contrast_image.jpg");


images = {I1, I2, I3, I4, I5};
titles = {'Image 1', 'Image 2', 'Image 3', 'Image 4', 'Image 5'};

for i = 1:length(images)
    I = images{i};


    if size(I, 3) == 3
        I = rgb2gray(I);
    end


    figure;
    subplot(2, 2, 1);
    imshow(I);
    title([titles{i} ' - Podstawowy']);

    subplot(2, 2, 2);
    imhist(I);
    title('Histogram');

    I_eq = histeq(I);

    subplot(2, 2, 3);
    imshow(I_eq);
    title([titles{i} ' - Wyrownanie']);

    subplot(2, 2, 4);
    imhist(I_eq);
    title('Histogram Wyrownanie');
end

