
for i = 1:12
    input_image = eval(['I', num2str(i)]);

    if ndims(input_image) == 2
        image = repmat(input_image, [1, 1, 3]);
    else
        image = input_image;
    end

    [q, r, ~] = size(image);

    figure;

    % A)
    #{
    s = floor(q / 2);
    n1 = image(1:s, :, :);
    n2 = image(s+1:end, :, :);
    subplot(2, 3, 1);
    imshow(n1);

    subplot(2, 3, 2);
    imshow(n2);
    #}

    % B)

    t = floor(r / 3);
    p1 = image(:, 1:t, :);
    p2 = image(:, t+1:2*t, :);
    p3 = image(:, 2*t+1:end, :);

    subplot(2, 3, 3);
    imshow(p1);
    axis image;

    subplot(2, 3, 4);
    imshow(p2);
    axis image;

    subplot(2, 3, 5);
    imshow(p3);
    axis image;

    % C)
    #{
    half_q = floor(q / 2);
    half_r = floor(r / 2);

    c1 = image(1:half_q, 1:half_r, :);
    c2 = image(1:half_q, half_r+1:end, :);
    c3 = image(half_q+1:end, 1:half_r, :);
    c4 = image(half_q+1:end, half_r+1:end, :);

    subplot(2, 3, 6);
    imshow(c1);
    #}

end
