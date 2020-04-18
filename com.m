clc
clear all
close all
t=0:0.01:5;
B=5
Ac=2;
fc=19;
Am=3;
fm=3;
mt=Am*cos(2*pi*fm*t);
figure(1)
subplot(5,1,1)
plot(t,mt)
xlabel('time')
ylabel('m(t)')
ct=Ac*cos(2*pi*fc*t);
subplot(5,1,2)
plot(t,ct)
xlabel('time')
ylabel('c(t)')
xt=Ac*cos(2*pi*fc*t + B*sin(2*pi*fm*t));
subplot(5,1,3)
plot(t,xt)
xlabel('time')
ylabel('frequency modulation')
fmt = fft(mt);
subplot(5,1,4)
plot(abs(fmt))
xlabel('frequency')
ylabel('FFT of m(t)')
fxt = fft(xt);
subplot(5,1,5)
plot(abs(fxt))
xlabel('frequency')
ylabel('FFT of x(t)')