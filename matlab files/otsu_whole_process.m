function thresh = otsu_whole_process(image, histogram)
    if(isempty(histogram))
        hist = normalized_histogram(image);
    else
        hist = histogram;
    end
    cum_sums = cumulative_sums(hist);
    [cum_means, global_mean] = cumulative_means(hist);
    varianc = between_class_variance(global_mean, cum_sums, cum_means);
    thresh = otsu_threshold(varianc);
end