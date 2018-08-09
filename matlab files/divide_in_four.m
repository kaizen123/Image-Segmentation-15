function [a, b, c, d] = divide_in_four(image)
    sz1 = size(image,1);
    sz2 = size(image,2);
    
    %half1 means along rows
    half1_first = round(sz1/2);
    if((half1_first * 2) == sz1)
        half1_second = half1_first;
    else
        half1_second = half1_first - 1;
    end
    half2_first = round(sz2/2);
    if((half2_first * 2) == sz2)
        half2_second = half2_first;
    else
        half2_second = half2_first - 1;
    end
    
    a = zeros(half1_first, half2_first);
    b = zeros(half1_first, half2_second);
    c = zeros(half1_second, half2_first);
    d = zeros(half1_second, half2_second);
    
    for i = 1:half1_first
        for j = 1:half2_first
            a(i,j) = image(i,j);
        end
    end
    
    for i = 1:half1_first
        for j = 1:half2_second
            b(i,j) = image(i,j+half2_first);
        end
    end
    
    for i = 1:half1_second
        for j = 1:half2_first
            c(i,j) = image(i+half1_first,j);
        end
    end
    
    for i = 1:half1_second
        for j = 1:half1_second
            d(i,j) = image(i+half1_first,j+half2_first);
        end
    end
    
end