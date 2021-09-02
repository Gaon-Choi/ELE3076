x = [3, 11, 7, 0, -1, 4, 2]; h = [2, 3, 0, -5, 2, 1];
y = conv(x, h);  % y(n) = x(n) * h(n)
subplot(1, 1, 1);
stem(y);
title("Convolution")
xlabel('n'); ylabel('x(n)*h(n)');