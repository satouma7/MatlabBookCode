Tmax=5000;dt=0.01;Tmax2=Tmax*dt;    %終了時刻をTmax2として計算
p=1;k=0.1;
T=1:Tmax2;
E=zeros(1,Tmax2);
E=(1-exp(-k*(T-1)))*p/k;
plot(1:Tmax2,E);
