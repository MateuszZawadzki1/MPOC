clc;
clear;
close all;

pkg load image;

[I1, map1] = imread("Obraz_04a.jpg");
[maska, map2] = imread("romb.png");

I1_mod = bitor(I1, maska);

figure;
imshow(I1_mod);


