for i = 1:12
    input_image = eval(['I', num2str(i)]);

    if ndims(input_image) != 3 || size(input_image, 3) != 3
        fprintf('Obraz I%d nie jest kolorowy (3 kanały RGB). Pomijam ten obraz.\n', i);
        continue;
    end

    R = input_image(:,:,1);
    G = input_image(:,:,2);
    B = input_image(:,:,3);

    R_image = zeros(size(input_image), 'uint8');
    G_image = zeros(size(input_image), 'uint8');
    B_image = zeros(size(input_image), 'uint8');

    R_image(:,:,1) = R;
    G_image(:,:,2) = G;
    B_image(:,:,3) = B;

    figure('Name', ['Obraz ' num2str(i)], 'NumberTitle', 'off');
    subplot(1, 3, 1);
    imshow(R_image);
    title('Składowa Czerwona (R)');
    axis image;

    subplot(1, 3, 2);
    imshow(G_image);
    title('Składowa Zielona (G)');
    axis image;

    subplot(1, 3, 3);
    imshow(B_image);
    title('Składowa Niebieska (B)');
    axis image;
end

