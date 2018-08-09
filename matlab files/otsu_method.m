function res = otsu_method(image)
    thresh = otsu_whole_process(image,[]);
    res = divide_image(image, thresh);
end