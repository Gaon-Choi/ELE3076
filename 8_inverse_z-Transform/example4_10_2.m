[delta, n] = impseq(0, 0, 6);
x = filter(b, a, delta) % check sequence

x = ((0.8).^n).*(cos(pi*n/4)+2*sin(pi*n/4))