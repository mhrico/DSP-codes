x=[1,2,1,1]; %first signal 0r input signal
h=[1,-1,1,-1]; %second signal
N1=length(x);
N2=length(h);
X=[x,zeros(1,N2)]; %padding of N2 zeros
H=[h,zeros(1,N1)]; %padding of N1 zeros
for n=1:N1+N2-1
    y(n)=0;
    for m=1:N1
        if(n-m+1>0)
            y(n)=y(n)+X(m)*H(n-m+1);
        else
        end
    end
end
stem(y);
ylabel('y[n]');
xlabel('------>n');
title('convolution of two signal');