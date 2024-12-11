clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_01a.png");
[maska, map2] = imread("kolo.png");

maska = uint8(maska);
maska = maska*255;

maska = maska(:,:,1);


I1_moded = bitand(I1, maska);

figure;
imshow(I1_moded);

