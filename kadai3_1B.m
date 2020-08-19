Tmax=5000;dt=0.01;
p=1;k=0.1;
T=1:Tmax;
E=zeros(1,Tmax);
E(1,:)=(1-exp(-k*(T-1)))*p/k;   %E‚ÌŒµ–§‰ð‚ðŒvŽZ
plot(1:Tmax,E);