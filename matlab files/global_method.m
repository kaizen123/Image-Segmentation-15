function [res, count] = global_method(image)
    thresh = sum(image(:));
    thresh = thresh / (size(image,1)*size(image,2));
    
    count = 0;
    done = 0;
    while ~done
        count = count+1;
        new_thresh = global_threshold(image, thresh);
        if abs(new_thresh - thresh) < 0.25
            done = 1;
        end
        thresh = new_thresh;
    end
    
    res = divide_image(image, new_thresh);
end