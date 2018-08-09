function [res] = normalized_histogram(image)
    sz1 = size(image,1);
    sz2 = size(image,2);
    res = zeros(1,256);
    for i = 1:sz1
        for j = 1:sz2
            res(image(i,j)+1) = res(image(i,j)+1) + 1;
        end
    end
    for i = 1:256
        res(i) = res(i) / (sz1 * sz2);
    end
end