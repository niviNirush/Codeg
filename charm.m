clc
clear all
close all
alpha=0.3
beta=0.7
c=6
x=-10:0.1:10
len=length(x);
for i=1:1:len
 
if x(i)>=c
    fx(i)=alpha*c
end
if(( x(i)>=-c) && (x(i)<=c))
        fx(i)=x(i)-(beta*c*(x(i)/c)^3)
end
   if x(i)<=-c
        fx(i)=-alpha*c
   end
end
plot(fx)






    