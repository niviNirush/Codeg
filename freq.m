clc
clear all
close all
N=192;
n=1:N
B=5;
Ac=2;
fc=19;
Am=3;
fm=3;
yfn=Ac*cos(2*pi*fc*n/N + B*sin(2*pi*fm*n/N))
plot(n,yfn)

