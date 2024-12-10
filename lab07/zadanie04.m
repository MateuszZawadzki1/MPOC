clc;
clear;
close all;
pkg load image;

I1 = imread("Obraz_06a.jpg");

I1_mod = imadjust(I1);

figure;
subplot(1,2,1)
imshow(I1)
title('Obraz 6');
subplot(1,2,2)
imshow(I1_mod)
title('Obraz 6 adjusted');
