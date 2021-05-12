% Discrete-time Signal x1(n) : Ts = 0.0002
Ts = 0.0002; n = -25:1:25; nTs = n * Ts; x = exp(-1000 * abs(nTs));
% Plots
subplot(2, 1, 1); stairs(nTs * 1000, x);
xlabel("t in msec."); ylabel("xa(t)");
title("Reconstructed Signal from x1(n) using zero-order-hold"); hold on
stem(n * Ts * 1000, x); hold off
%
% Discrete-time Signal x2(n) : Ts = 0.0001
Ts = 0.0001; n = -5:1:5; nTs = n * Ts; x = exp(-1000 * abs(nTs));
% Plots
subplot(2, 1, 2); plot(nTs * 1000, x);
xlabel("t in msec"); ylabel("xa(t)");
title("Reconstructed Signal from x2(n) using zero-order-hold"); hold on
stem(n * Ts * 1000, x); hold off