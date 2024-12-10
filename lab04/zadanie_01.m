clc;
clear;
close all;

% Wczytanie obrazów tła i ufoludka
[I1, map1] = imread("big-ben-london.webp");
[I2, map2] = imread("leaning-tower-pisa-italy.webp");
[I3, map3] = imread("moon.tif");
[I4, map4] = imread("office_1.jpg");
[I5, map5] = imread("office_6.jpg");
[I6, map6] = imread("paris-france-eiffel-tower.webp");
[I7, map7] = imread("san-francisco-golden-gate-difference-FIND0320-5de1c2e1986f4a3890bfb119d891b972.webp");
[I8, map8] = imread("sydney-australia-opera-harbor.webp");
[I9, map9] = imread("tire.tif");


I1 = double(I1);

figure;
imshow(I1 / 255);
title('Oryginalny obraz');


scale_factor = 1.5;

% Metoda 1
I1_scaled_clipping = I1 * scale_factor;
I1_scaled_clipping(I1_scaled_clipping > 255) = 255;
I1_scaled_clipping(I1_scaled_clipping < 0) = 0;


figure;
imshow(I1_scaled_clipping / 255);
title('Metoda 1');

% Metoda 2
I1_scaled_normalized = I1 * scale_factor;
max_value = max(I1_scaled_normalized(:));
if max_value > 255
    I1_scaled_normalized = I1_scaled_normalized / max_value * 255;
end

figure;
imshow(I1_scaled_normalized / 255);
title('Metoda 2');
