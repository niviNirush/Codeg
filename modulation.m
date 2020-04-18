clc
clear all
close all
Am=2;
Ac=2;
N=192;
n=1:1:N;
m(n)=Am*sin(2*pi*n*100/N)
k=1
for i=1:N
y(i)=Ac*(1+k*m(i))*cos(2*pi*1000*i)
end
figure(1)
plot(y)