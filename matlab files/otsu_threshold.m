function res = otsu_threshold(variance)
    max_var = max(variance);
    pos = find(variance == max_var);
    sz = length(pos);
    for i = 1:sz
        pos(i) = pos(i) - 1;
    end
    res = sum(pos(:));
    res = res / sz;
end