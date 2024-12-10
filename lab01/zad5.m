for i = 1:12
    input_image = eval(['I', num2str(i)]);

    if ndims(input_image) == 3 && size(input_image, 3) == 3

        R = double(input_image(:,:,1));
        G = double(input_image(:,:,2));
        B = double(input_image(:,:,3));


        gray_image = (11 * R + 16 * G + 5 * B) / 32;
        gray_image = uint8(gray_image);


        figure;
        imshow(gray_image);
        title(['Obraz I', num2str(i), ' w odcieniach szarości']);
    else
        disp(['Pominięto obraz I', num2str(i), ' - nie jest obrazem RGB']);
    end
end

