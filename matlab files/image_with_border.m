function image = image_with_border(image, border)
    for i = 1: size(image,1)
        for j = 1: size(image,2)
            if border(i,j) == 0
                image(i,j,1) = 255;
                image(i,j,2) = 0;
                image(i,j,3) = 0;
            end
        end
    end
end