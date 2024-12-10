close all;
clear;
clc;
pkg load image;

I1 = imread("Obraz_05a.png");

I1 = rgb2gray(I1);

% Operacja histogramu na poziomach szarosci
I_equalized = histeq(I1, 256);

% Usuniecie artefaktow
h = fspecial('gaussian', [5, 5], 1);
I_equalized = imfilter(I_equalized, h);


figure;
subplot(1,3,1);
imshow(I1);
title("Original");

subplot(1,3,2);
imshow(I_equalized);
title("Po modyfikacjach");

