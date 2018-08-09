function res = divide_image(image, thresh)
    res = zeros(size(image));
    for i =1:size(image,1)
        for j =1:size(image,2)
            if image(i,j) > thresh
                res(i,j) = 1;
            end
        end
    end
end