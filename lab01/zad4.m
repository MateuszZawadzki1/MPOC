%[I m] = imread('4.1.05.bmp');
%[I m] = imread('autumn.tif');
%[I m] = imread('kids.tif');
%[I m] = imread('lena256.bmp');



[I, m] = imread('autumn.tif');

if ndims(I) > 2
    disp('Obraz RGB');
    imshow(I);
    title('Obraz RGB');

    I = double(I);

    % Obliczanie obrazu w odcieniach szarości
    Igray = (I(:,:,1) + I(:,:,2) + I(:,:,3)) / 3;
    Igray = Igray / 255;  % Normalizacja do zakresu [0, 1]

    figure;
    imshow(Igray);
    title('Obraz w odcieniach szarości (średnia)');

    % Alternatywna metoda z wagami
    Igray2 = (11 * I(:,:,1) + 16 * I(:,:,2) + 5 * I(:,:,3)) / 32;
    Igray2 = Igray2 / 255;  % Normalizacja
    figure;
    imshow(Igray2);
    title('Obraz w odcieniach szarości (waga RGB)');

elseif size(m, 1) > 1
    disp('Obraz indeksowany');
    imshow(I, m);
    title('Obraz indeksowany');
else
    disp('Obraz w gradacji szarości');
end

