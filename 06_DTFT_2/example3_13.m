w = [0:1:500] * pi / 500;   % [0, pi] axis divided into 501 points
H = exp(1j * w) ./ (exp(1j * w) - 0.9 * ones(1, 501));
magH = abs(H); angH = angle(H);
subplot(2, 1, 1); plot(w / pi, magH); grid;
xlabel("frequency in pi units"); ylabel("|H|");
title("Magnitude Response");
subplot(2, 1, 2); plot(w/pi, angH/pi); grid
xlabel("frequency in pi units"); ylabel("Phase in pi Radians");
title("Phase Response");