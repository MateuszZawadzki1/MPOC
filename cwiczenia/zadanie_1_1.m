% Popraw jakosc obrazow 1 i 2 uzywajac operacji filtracji

clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_01a.png");
[I2, map2] = imread("Obraz_02a.png");

h = fspecial("gaussian", [5, 5], 1);
I1_filtred = imfilter(I1, h);

I1_filtred = medfilt2(I1_filtred);

figure;
subplot(1,2,1);
imshow(I1);
title("OG");

subplot(1,2,2);
imshow(I1_filtred);
title("MOD");

I2_filtred = imfilter(I2, h);

I2_filtred = medfilt2(I2_filtred);

figure;
subplot(1,2,1);
imshow(I2);
title("OG");

subplot(1,2,2);
imshow(I2_filtred);
title("MOD");
