clc;
clear;
close all;

% Wczytanie obrazów tła i ufoludka
[tlo, map1] = imread("Tlo.bmp");
[ufo, map2] = imread("Ufok.bmp");


map2 = ufo;
map2(ufo > 0) = 255;

mask = map2
Nmask = 255 - mask;

[ufo, map2] = imread("Ufok.bmp");

ufo = ind2rgb(ufo, map2);
ufo = uint8(ufo *255);


%tlo = uint8(tlo +255);

% Wybór pierwszego kadru ufoludka (96x96)
ufo_frame = ufo(1:96, 1:75, :);

w = size(ufo, 1);
k = size(ufo, 2);
t = size(ufo, 3);

% Pozycja na tle (x = 200, y = 300)
x = 50;
y = 150;

mask_rgb = repmat(mask, [1, 1, 3]);

tlo = repmat(tlo, [1, 1, 3]);
Nmask = repmat(Nmask, [1, 1, 3]);

T = tlo(x:x + w-1, y:y + k-1, :);


T = bitand(T, Nmask);


U = bitand(ufo, mask_rgb);

final = bitor(T, U);



% Wyświetlenie wyniku
figure;
imshow(T);
figure;
imshow(U);
figure;
imshow(final);
