function [im_filter, res] = global_method_smooth(image)
    filter = ones(5) / 25;
    im_filter = imfilter(image, filter);
    res = otsu_method(im_filter);
end