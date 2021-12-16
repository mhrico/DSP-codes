% continuous form x(t) = 5*sin(2*pi*1000*t)

f = 1000;
t = linspace(0,1,500);
x = 5*sin(2*pi*f*t);
subplot(2,1,1);
stem(t,x);

% discrete form x(n) = 5*sin(2*pi*n*f/fs)

Fs = 44000;
Ts = 1/Fs;
n = 0:55;
xs = 5*sin(3*pi*f*Ts*n);
subplot(2,1,2);
plot(n,xs);

