function pn_hat = compute_aitkens(pn, pn_1, pn_2)
    pn_hat = pn - ((pn_1 - pn)^2) / (pn_2 - 2 * pn_1 + pn);
end
