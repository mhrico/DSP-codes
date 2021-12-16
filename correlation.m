x=[1,2,3,4]; %first signal 0r input signal
y=[4,3,4,3];
y = fliplr(y); %second signal
N1=length(x);
N2=length(y);
X=[x, zeros(1,N2)]; %padding of N2 zeros
Y=[y, zeros(1,N1)]; %padding of N1 zeros
for n=1:N1+N2-1
    r(n)=0;
    for m=1:N1
        if(n-m+1>0)
            r(n)=r(n)+X(m)*Y(n-m+1);
        else
        end
    end
end
stem(r);
ylabel('r(x,y)');
xlabel('------>n');
title('correlation of two signal');