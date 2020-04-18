clc
clear all
close all
t=0:0.01:5;
wc=50;
wm=1;
RC=(2*pi)/10;
ka=0.5;
xt=cos(wc*t).*(1+ka*sin(wm*t))
figure(2)
subplot(2,1,1)
plot(t,xt)
xlabel('time');
ylabel('AM modulation')
l=length(xt); %demodulation using envelop detector
v1=1-exp(-0.01/RC);
v2=exp(-0.01/RC);
vc=1;
for i=2:l;
    if (xt(i)> vc(i-1))
        vc(i)= xt(i)
    else
        vc(i)=vc(i-1)*v2;
    end
end
subplot(2,1,2)
plot(t,xt)
hold on
plot(t,vc,'LineWidth',4)
xlabel('time');
ylabel('Demodulation')
