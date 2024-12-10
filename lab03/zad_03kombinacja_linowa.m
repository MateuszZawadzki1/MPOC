clc;
clear;
close all;

pkg load image;

[I1, map1] = imread("snow.png");
[I2, map2] = imread("LENA256.BMP");

I1 = uint8(I1);
I1 = I1 * 255;


if size(I1, 3) == 3
    I1 = rgb2gray(I1);
end
if size(I2, 3) == 3
    I2 = rgb2gray(I2);
end

a = 0.5;
b = 0.5;

I_combined = imlincomb(a, I1, b, I2);

figure;
subplot(1, 3, 1);
imshow(I2);
title('Obraz I2');

subplot(1, 3, 2);
imshow(I1);
title('Obraz I1');

subplot(1, 3, 3);
imshow(I_combined);
title('Kombinacja liniowa');

