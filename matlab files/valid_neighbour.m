function answer = valid_neighbour(x, y, sizex, sizey)
    answer = 'y';
    if(x == 0 || y == 0)
        answer = 'n';
    elseif (x > sizex || y > sizey)
        answer = 'n';
    end
end