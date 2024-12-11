clc;
clear;
close all;
pkg load image;

[I1, map1] = imread("Obraz_01a.png");
[maska, map2] = imread("trojkat.png");

maska = maska(:,:,1 );


maska = maska*255;

I1_edited = bitor(I1, maska);

figure;
imshow(I1);

figure;
imshow(I1_edited);


