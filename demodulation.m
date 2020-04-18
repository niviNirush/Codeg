clc
clear all;
RLC=2*pi/10;
fc=100;
fm=10;
m=5;
s=300;
Dt=2*pi/1000;
t=0:.1:300;
M=sin(2*pi*fm*(t/s)); %message signal
subplot(511)
plot(M)
ylabel('Amplitude');xlabel('Time index');title('Message signal')
%fourier transform of message signal
M2=abs(fft(M));
subplot(512)
plot(M2)
ylabel('Amplitude');xlabel('Frequency index');title('Fourier transform of Message signal')
y=cos(2*pi*fc*(t/s)-(m.*cos(2*pi*fm*(t/s))));
subplot(513)
plot(t,y)
ylabel('Amplitude');xlabel('Time index');title('WBFM Signal')
%derivative of FM signal
l=length(y);
M1=(0.2+ (.3*sin((pi*t)/15))/3);
Ynew=diff(y);
Ynew(l)=0;
subplot(514)
plot(t,Ynew)
ylabel('Amplitude');xlabel('Time');title('Differentiation of FM signal')
%Envelope Detector
Yout=zeros(1,l);
Yout=0;
for i = 2:l
    if Ynew(i)> Yout(i-1)
        Yout(i)=Ynew(i);
    else
        Yout(i)=Yout(i-1)*exp(-Dt/RLC);
    end
end
%
%Plots
%
subplot(515)
plot(t,Ynew)
ylabel('Amplitude');xlabel('Time index');title('WBFM Demodulation')
hold on
plot(t,Yout,'r')
hold on
plot(t,M1,'g')

