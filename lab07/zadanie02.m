close all;
clear;
clc;
pkg load image;

[I1, map1] = imread('Obraz_04a.jpg');
I1 = rgb2gray(I1);

% Rozciagniecie histogramu / poprawa kontrastu
I1_equalized = imadjust(I1, stretchlim(I1), []);



figure;
subplot(1,2,1);
imshow(I1);
title("Original");
subplot(1,2,2);
imshow(I1_equalized);
title("After histeq");



