% Discrete-time Signal x2(n)
Ts = 0.001; n = -5:1:5; nTs = n * Ts; x = exp(-1000 * abs(nTs));
Fs = 1/Ts;
% Analog Signal reconstruction
Dt = 0.00005; t = -0.005:Dt:0.005;
xa = x * sinc(Fs*(ones(length(n), 1)*t-nTs'*ones(1, length(t))));
% check
error = max(abs(xa - exp(-1000 * abs(t))))