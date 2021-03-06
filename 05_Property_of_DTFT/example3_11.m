n = -5:10; x = rand(1, length(n));
k = -100:100; w = (pi/100) * k;         % frequency between -pi and +pi
X = x * (exp(-1j * pi/100)).^(n'*k);    % DTFT of x
% folding property
y = fliplr(x); m = -fliplr(n);          % signal folding
Y = y * (exp(-1j * pi/100)).^(m'*k);    % DTFT of y
% verification
Y_check = fliplr(X);
error = max(abs(Y - Y_check))