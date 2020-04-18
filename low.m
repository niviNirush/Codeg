clc
close all
clear all
z=-pi:0.1:pi;
len=length(z);
for i=1:1:len
    f(i)=(exp(sqrt(-1)*z(i)))/(exp(sqrt(-1)*z(i))-0.8);
end
plot(z,f);