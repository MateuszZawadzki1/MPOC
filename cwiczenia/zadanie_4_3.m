clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_01a.png");
[maska, map2] = imread("kolo.png");

maska = uint8(maska);
maska = maska*255;

maska = maska(:,:,1);

maska_moded = bitor(I1, maska);

figure;
imshow(maska_moded);
