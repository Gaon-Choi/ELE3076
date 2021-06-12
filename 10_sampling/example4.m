n = 0:256; k1 = 64; k2 = k1 + 32; m = 0:(k2-k1);
Hf1 = figure('units', 'inches', 'position', [1,1,6,4], 'paperunits', 'inches', 'paperposition', [0,0,6,4]);

% (a) Original signal
x = cos(pi*n); subplot(2, 2, 1);
Ha = stem(m, x(m+k1+1), "g", "filled"); axis([-1,33,-1.1,1.1]);
set(Ha, "markersize", 2); ylabel("Amplitude");
title("Original Sequence x(n)");
set(gca, "xtick", [0, 16, 32]); set(gca, "ytick", [-1, 0, 1]);

% (b) Interpolation by I = 2
I = 2; y = interp(x, I); subplot(2, 2, 2);
Hb = stem(m, y(m+k1*I+1), "c", "filled"); axis([-1,33,-1.1,1.1]);
set(Hb, "markersize", 2); ylabel("Amplitude");
title("Interpolated by I = 2");
set(gca, "xtick", [0, 16, 32]); set(gca, "ytick", [-1,0,1]);

% (c) Interpolation by I = 4
I = 4; y = interp(x, I); subplot(2, 2, 3);
Hc = stem(m, y(m+k1*I+1), "r", "filled"); axis([-1,33,-1.1,1.1]);
set(Hc, "markersize", 2); ylabel("Amplitude");
title("Interpolated by I = 4");
set(gca, "xtick", [0, 16, 32]); set(gca, "ytick", [-1,0,1]);
xlabel("n");

% (d) Interpolation by I = 8
I = 8; y = interp(x, I); subplot(2, 2, 4);
Hd = stem(m, y(m+k1*I+1), "m", "filled"); axis([-1,33,-1.1,1.1]);
set(Hd, "markersize", 2); ylabel("Amplitude");
title("Interpolated by I = 8");
set(gca, "xtick", [0, 16, 32]); set(gca, "ytick", [-1,0,1]);
xlabel("n");
