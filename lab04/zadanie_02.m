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


height = size(I1, 1);
width = size(I1, 2);


I_left = I1(:, 1:floor(width/2), :);
I_right = I1(:, floor(width/2)+1:end, :);


figure;
subplot(1, 2, 1);
imshow(I_left / 255);


subplot(1, 2, 2);
imshow(I_right / 255);


I_diff = abs(I_left - I_right);


figure;
imshow(I_diff / 255);
title('roznice');

