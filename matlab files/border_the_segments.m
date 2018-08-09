function segments_border = border_the_segments(image, val)
    segments_border = ones(size(image,1), size(image,2));
    if val == 1
        neighbour_val = 0;
    else
        neighbour_val = 1;
    end
        
    for i = 1:size(image,1)
        for j = 1:size(image,2)
            if image(i,j) == val
                is_border = 'n';
                if(is_border == 'n' && valid_neighbour(i+1, j,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i+1, j) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i+1, j+1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i+1, j+1) == neighbour_val
                        is_border = 'y';
                end
                if(is_border == 'n' && valid_neighbour(i+1, j-1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i+1, j-1) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i-1, j,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i-1, j) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i-1, j+1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i-1, j+1) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i-1, j-1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i-1, j-1) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i, j-1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i, j-1) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'n' && valid_neighbour(i, j+1,...
                        size(image,1), size(image,2)) == 'y')
                    if image(i, j+1) == neighbour_val
                        is_border = 'y';
                    end
                end
                if(is_border == 'y')
                    segments_border(i,j) = 0;
                end
            end
        end
    end
end
    