b = [1, 0.4 * sqrt(2)];
a = [1, -0.8 * sqrt(2), 0.64];
[R, p, C] = residuez(b, a)

Mp = (abs(p))'   % pole magnitudes
Ap = (angle(p))'/pi   % pole angles in pi units