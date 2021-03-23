n = -2:10; x = [1:7, 6:-1:1];

[x21, n21] = sigfold(x, n); [x21, n21] = sigshift(x21, n21, 3);         % x(3-n)
[x22, n22] = sigshift(x, n, 2); [x22, n22] = sigmult(x, n, x22, n22);   % x(n)x(n-2)
[x2, n2] = sigadd(x21, n21, x22, n22);
subplot(2, 1, 2); stem(n2, x2); title("Sequence in Example 2.2b")
xlabel("n"); ylabel("x2(n)");