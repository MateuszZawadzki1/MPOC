for i = 1:12
    input_image = eval(['I', num2str(i)]);

    if isempty(input_image)
        fprintf('Obraz I%d nie jest dostępny. Pomijam ten obraz.\n', i);
        continue;
    end

    h_sym = flipud(input_image);

    v_sym = fliplr(input_image);

    figure('Name', ['Odbicia Obraz I' num2str(i)], 'NumberTitle', 'off');

    subplot(1, 2, 1);
    imshow(h_sym);
    title('Odbicie względem osi poziomej');

    subplot(1, 2, 2);
    imshow(v_sym);
    title('Odbicie względem osi pionowej');
end
