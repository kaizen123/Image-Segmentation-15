function [res, global_mean] = cumulative_means(norm_hist)
    res = zeros(1,256);
    for i = 1:256
        for j = 1:i
            res(i) = res(i) + (norm_hist(j) * (j-1));
        end
    end
    global_mean = res(256);
end