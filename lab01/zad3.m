[I1, map1] = imread('autumn.tif');
[I2, map2] = imread('canoe.tif');
[I3, map3] = imread('4.1.05.BMP');
[I4, map4] = imread('4.1.06.jpg');
[I5, map5] = imread('4.1.06.tiff');
[I6, map6] = imread('4.2.03.BMP');
[I7, map7] = imread('4.2.06.BMP');
[I8, map8] = imread('4.2.07.BMP');
[I11, map11] = imread('foto08.BMP');
[I12, map12] = imread('kids.tif');
[I13, map13] = imread('LENA256.BMP');
[I14, map14] = imread('lenaRGB.tiff');

images = {I1, I2, I3, I4, I5, I6, I7, I8, I11, I12, I13, I14};
maps = {map1, map2, map3, map4, map5, map6, map7, map8, map11, map12, map13, map14};
output_images = cell(1, length(images));

for i = 1:length(images)
    img = images{i};
    map = maps{i};

    fprintf('Obraz %d: ', i);

    if ismatrix(img)
        if isempty(map)
            fprintf('Obraz jest w skali szarości.\n');
            output_images{i} = img;
        else
            fprintf('Obraz jest indeksowany.\n');
            gray_image = ind2gray(img, map);
            output_images{i} = gray_image;
            rgb_image = ind2rgb(img, map);

            figure;
            subplot(1, 2, 1);
            imshow(gray_image);
            title(sprintf('Obraz %d w skali szarości', i));

            subplot(1, 2, 2);
            imshow(rgb_image);
            title(sprintf('Obraz %d kolorowy (RGB)', i));
        end
    elseif ndims(img) == 3 && size(img, 3) == 3
        fprintf('Obraz jest kolorowy (RGB).\n');
        output_images{i} = img;
    else
        fprintf('Nieznany format obrazu.\n');
    end
end

