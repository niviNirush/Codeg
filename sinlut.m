clc
close all
%for generation and sampling
N=1024;
Vr=2;
n=1:1:N;
LUT(n)=sin(2*pi*n/N);
subplot(311)
plot(n,LUT)
%for quantization
Nb=8;
L=2^8;
LSB=Vr/L;
for i=1:N
    for j=1:L
if ( LUT(i)>=-1+(j-1)*LSB && LUT(i)<=-1+j*LSB )
    DAC(i)=(2*j-1)/2;
end
    end
end
subplot(312)
plot(DAC)
fd=1;
fs=1024;
td=1/fd;
ph_st=((fd/fs)*2*pi);
lc_st=round(ph_st/((2*pi)/N));
init=1;
loc=1;
for t=init:1:N
    gen(t)=DAC(loc);
    loc=loc+lc_st;
    if loc>=N
        break
    end
end
loc=1;
init=t;
%subplot(313)
%plot(gen)


    
    