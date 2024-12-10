close all;
clear;
clc;
pkg load image;


%Popraw jakość obrazów 1, 2 i 3 używając operacji filtracji.

[I1, map1] = imread("Obraz_01a.png");
[I2, map2] = imread("Obraz_02a.png");
[I3, map3] = imread("Obraz_03a.png");
[I4, map4] = imread("Obraz_04a.jpg");
[I5, map5] = imread("Obraz_05a.png");
[I6, map6] = imread("Obraz_06a.jpg");

% Gaussian wygladza i zmiekscza
h = fspecial('gaussian', [5, 5], 1);

obraz_z_filtrem = imfilter(I1, h);
obraz_z_filtrem2 = imfilter(I2, h);
obraz_z_filtrem3 = imfilter(I3, h);

figure;
subplot(1, 3, 1);
imshow(I1);
title('Oryginal')


subplot(1, 3, 2);
imshow(I2);
title('Oryginal')


subplot(1, 3, 3);
imshow(I3);
title('Oryginal')

figure;
subplot(1, 3, 1);
imshow(obraz_z_filtrem);
title('Po Gaussie')
subplot(1, 3, 2);
imshow(obraz_z_filtrem2);
title('Po Gaussie')
subplot(1, 3, 3);
imshow(obraz_z_filtrem3);
title('Po Gaussie')


obraz_medianowy = medfilt2(obraz_z_filtrem);
obraz_medianowy2 = medfilt2(obraz_z_filtrem2);
obraz_medianowy3 = medfilt2(obraz_z_filtrem3);

% Filtr medianowy usuwa szum (sol i pieprz)
figure;
subplot(1,3,1);
imshow(obraz_medianowy);
title('Filtr medianowy')
subplot(1,3,2);
imshow(obraz_medianowy2);
title('Filtr medianowy')
subplot(1,3,3);
imshow(obraz_medianowy3);
title('Filtr medianowy')


