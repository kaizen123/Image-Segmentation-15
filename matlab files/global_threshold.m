function mean = global_threshold(image, thresh)
    
    %image matrices to save 2 parts of image
    image1 = zeros(size(image));
    image2 = zeros(size(image));
    
    %save pixels with value > thresh in image1
    %and value < thresh in image2
    for i =1:size(image,1)
        for j =1:size(image,2)
            if image(i,j) > thresh
                image1(i,j) = image(i,j);
            else
                image2(i,j) = image(i,j);
            end
        end
    end

    mean1 = 0;
    mean2 = 0;
    
    count1 = 0;
    count2 = 0;
    
    for i = 1:size(image,1)
        for j = 1:size(image,2)
            if image1(i,j) ~= 0
                count1 = count1+1;
                mean1 = mean1 + image1(i,j);
            end
            if image2(i,j) ~= 0
                count2 = count2+1;
                mean2 = mean2 + image2(i,j);
            end
        end
    end
    mean1 = mean1 / count1;
    mean2 = mean2 / count2;
    
    mean = (mean1 + mean2)/2;
end