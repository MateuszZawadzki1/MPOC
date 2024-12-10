clc;
clear;
close all;

[I1 map1] = imread("Piorun_maska.png");
[I2 map2] = imread("LENA256.BMP");

% Zmiana logical na uint8
I1 = uint8(I1);
I1 = I1*255;

if size(I1, 3) == 3
    I1 = rgb2gray(I1);
end
if size(I2, 3) == 3
    I2 = rgb2gray(I2);
end

w = size(I2,1);
k = size(I2,2);

%Ia = I1(90:90+w-1,300:300+k-1);



figure;
subplot(1,3,1);
imshow(I2);

subplot(1,3,2);
imshow(I1);

Iw = bitand(I1, I2);

subplot(1,3,3);
imshow(Iw);
