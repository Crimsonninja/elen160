function x = compute_logistic_map(p, x_init, N)
% COMPUTE_LOGISTIC_MAP Computes a sequence with pattern x(k+1) =
% p*x(k)[1-x(k)]
    if (N < 1)
        return;
    end
    x = [x_init];
    x_old = x_init;
    for i=1:N
        x_new = p*x_old*(1-x_old);
        x = [x;x_new];
        x_old = x_new;
    end
end