function res = cumulative_sums(norm_hist)
    res = zeros(1,256);
    for i = 1:256
        for j = 1:i
            res(i) = res(i) + norm_hist(j);
        end
    end
end