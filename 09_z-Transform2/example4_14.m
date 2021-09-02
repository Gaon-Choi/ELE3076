n = [0:7]; x = (1/4).^n; xic = [1, -2];
b = 1; a = [1, -1.5, 0.5];
format long; y1 = filter(b, a, x, xic)
y2 = (1/3)*(1/4).^n+(1/2).^n+(2/3)*ones(1, 8) % MATLAB Check
