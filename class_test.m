close all;
clear all;
clc;

%% x(t) = 2sin(2*pi*1000*t)
N = 500;
t = linspace(0,1,N);
xt = 2 * sin(2 * pi * 1000* t);
figure;
plot(t,xt);
title('Input Signal');

%% Multiplication with Rectangular Window
rw = ones(1, N);
figure;
subplot(3,1,1);
plot(xt);
title('Input Signal');
subplot(3,1,2);
plot(rw);
title('Rectangular Window')
y = xt .* rw;
subplot(3,1,3);
plot(y);
title('Multiplication with Rectangular Window')

%% Multiplication with hamming window
for n = 1:500;
    hw(n) = 0.54 - 0.46 * cos (2 * pi * n / N);
end
figure;
subplot(3,1,1);
plot(xt);
title('Input Signal');
subplot(3,1,2);
plot(hw);
title('Hamming Window')
y = xt .* hw;
subplot(3,1,3);
plot(y);
title('Multiplication with Hamming Window')

%% Multiplication With Triangle Window
M = N/2;
for n = 1:M
    tw1(n) = (2 * n - 1)/N;
end
for n = M+1:N
    tw2(n) = 2 - (2 * n - 1)/N;
end
tw2 = tw2(M+1:end);
tw = [tw1, tw2];
figure;
subplot(3,1,1);
plot(xt);
title('Input Signal');
subplot(3,1,2);
plot(tw);
title('Triangle Window')
y = xt .* tw;
subplot(3,1,3);
plot(y);
title('Multiplication with Triangle Window')


