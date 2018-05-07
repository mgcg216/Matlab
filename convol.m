function [y,L1, L2] = convol (x1, M1, M2, x2, N1, N2)
    L1 = M1 + N1;
    L2 = M2 + N2;
    y = conv(x1, x2);
end