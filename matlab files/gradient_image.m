function res = gradient_image(image)
    image = double(image);
    filterx = [-1 -1 -1; 0 0 0; 1 1 1];
    filtery = [-1 0 1; -1 0 1; -1 0 1];
    resx = abs(imfilter(image, filterx));
    resy = abs(imfilter(image, filtery));
    res = sqrt(resx.*resx + resy.*resy);
    res = uint8(res);
end