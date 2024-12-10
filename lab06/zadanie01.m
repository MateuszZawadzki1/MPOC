clc;
clear;
pkg load image;
close all;

I = imread('peppers.png');

Isp = imnoise(I, 'salt & pepper', 0.05);
Ig = imnoise(I, 'gaussian', 0.05);
Is = imnoise(I, 'speckle',0.05);
Ip = imnoise(I, 'poisson',0.05);

imwrite(Isp, 'peppers(salt&pepper).png','png');
imwrite(Ig, 'peppers(gaussian).png', 'png');
imwrite(Is, 'peppers(speckle).png', 'png');
imwrite(Ip, 'peppers(poisson).png', 'png');

imshow(I)
title('Obraz oryginalny');
figure;

subplot(2,2,1)
imshow(Ig)
title('Gaussian');

subplot(2,2,2)
imshow(Isp)
title('Sol i pieprz');

subplot(2,2,3)
imshow(Is)
title('Speckle');

subplot(2,2,4)
imshow(Ip)
title('Poisson)');

