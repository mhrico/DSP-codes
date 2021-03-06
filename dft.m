xn = [1 1 1];
N = 8; %input('N-point DFT. N = ')
L = length(xn);
if (N < L)
    error('N must be greater than L');
end
xn = [xn, zeros(1,N-L)];
for k = 0: N-1
    for n = 0: N-1
        Wn = exp(-1i * 2 * pi * k * n / N);
        TF(k + 1, n + 1) = Wn;
    end
end

Xk = TF * xn.';
k = 0:N-1;
subplot(3,1,1);
stem(real(Xk),imag(Xk));
subplot(3,1,2);
stem(k, abs(Xk));
subplot(3,1,3);
stem(k, angle(Xk));