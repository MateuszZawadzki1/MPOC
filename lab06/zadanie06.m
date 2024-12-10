clc;
clear;
pkg load image;
close all;

[I, map] = imread("peppers.png");

K1 = 3;
w = 3;
k = 3;


Iout = I;


figure;
imshow(I);


for w = K1 : size(I,1) - K1
  for k = K1 : size(I, 2) - K1

    W1 = I(w-K1+1:w, k-K1+1:k);
    w2 = I(w-K1+1:w, k+K1+1:k);
    w3 = I(w:w+K1-1, k-K1+1:k);
    w4 = I(w:w+K1-1, k:k+K1-1);


    odchylenie(1) = std(W1(:));
    odchylenie(2) = std(w2(:));
    odchylenie(3) = std(w3(:));
    odchylenie(4) = std(w4(:));

    srednia(1) = mean(W1(:));
    srednia(2) = mean(w2(:));
    srednia(3) = mean(w3(:));
    srednia(4) = mean(w4(:));


    [minVal, ind] = min(odchylenie(:));


    Iout(w, k) = srednia(ind);
  end
end


figure;
imshow(Iout);

