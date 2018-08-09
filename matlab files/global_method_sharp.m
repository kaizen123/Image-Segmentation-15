function [res, grad, imuseful, h] = global_method_sharp(image)
   grad = gradient_image(image);
   hist = normalized_histogram(grad);
   cum_sum = cumulative_sums(hist);
   ind = find(cum_sum >= 0.999, 1);
   ind = ind - 1;
   marker = grad > ind;
   im = double(image);
   imuseful = im .* marker;
   imuseful = uint8(imuseful);
   h = imhist(imuseful);
   h(1) = 0;
   h = h / sum(h);
   thresh = otsu_whole_process(image, h);
   res = divide_image(image, thresh);
end