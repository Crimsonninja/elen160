function [T,delta] = compute_delta(col_vec)
    possible_T = [2, 4, 8, 16, 32];
    for i = 1:length(possible_T)
        T = possible_T(i);
        a1 = col_vec(end-T+1:end);
        a2 = col_vec(end-2*T+1:end-T);
        delta = a1-a2;
        if norm(delta,Inf) < 10^-4
            return
        end
    end
end