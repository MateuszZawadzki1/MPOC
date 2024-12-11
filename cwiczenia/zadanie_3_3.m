clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_01a.png");

%Medianowy sol pieprz
I1_moded = medfilt2(I1);

%Wygladzanie
h = fspecial("gaussian", [5,5], 1);
I1_moded = imfilter(I1_moded, h);


figure;
subplot(1,2,1);
imshow(I1);

subplot(1,2,2);
imshow(I1_moded);
