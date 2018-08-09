function [res] = between_class_variance(global_mean, cum_sums, cum_means)
    res = zeros(1,256);
    for i = 1:256
        num = ((global_mean * cum_sums(i)) - cum_means(i)) ^ 2;
        den = cum_sums(i) * (1 - cum_sums(i));
        res(i) = num / den;
    end
end