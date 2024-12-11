% Popraw jakosc obrazow 3 i 4 uzywajac p[earcko na histogramie poziomow szarosci

clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_04a.jpg");

I1 = rgb2gray(I1);

I1_mod = imadjust(I1, stretchlim(I1), []);

% Nie pomaga
% I1_mod = histeq(I1);

figure;
subplot(1,2,1);
imshow(I1);

subplot(1,2,2);
imshow(I1_mod);
