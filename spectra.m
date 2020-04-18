clc
clear all
close all
t=0:0.01:5;
f=0:0.01:5;
ka=0.85;
Ac=2;
fc=250;
Am=3;
fm=6.67;
mt=Am*sin(2*pi*fm*t); %message signal
figure(1)
subplot(5,1,1)
plot(t,mt)
xlabel('time ->')
ylabel('m(t)')

ct=Ac*cos(2*pi*fc*t);%carrier signal
subplot(5,1,2)
plot(t,ct)
xlabel('time ->')
ylabel('c(t)')


xt=Ac.*(1+ka*mt).*cos(2*pi*fc*t); %amplitude modulation
subplot(5,1,3)
plot(t,xt)
xlabel('time ->')
ylabel('AM signal')


fmt = fft(mt); % spectra of mt
subplot(5,1,4)
plot(abs(fmt))
xlabel('frequency ->')
ylabel('spectra of m(t)')

fxt = fft(xt);  % spectra of xt
subplot(5,1,5)
plot(abs(fxt))
xlabel('frequency ->')
ylabel('spectraofx(t)')
