clc;
clear;
pkg load image;
close all;

I = imread('peppers.png');
Iszum = imread('peppers(gaussian).png');

diff_image = imabsdiff(I, Iszum);
figure;
imshow(diff_image);

diff_image = rgb2gray(diff_image);

Iout = histeq(diff_image);
figure;
imshow(Iout);
