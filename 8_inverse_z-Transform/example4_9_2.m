[delta, n] = impseq(0, 0, 7); x = filter(b, a, delta)   % check sequence
x = (0.75) * (0.9).^n + (0.5) * n.*(0.9).^n + (0.25)*(-0.9).^n % answer sequence