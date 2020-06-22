Tmax1=5000;dt=0.01;Tmax2=Tmax1*dt;
p=1;k=0.1;
E=zeros(1,Tmax1);
for T=1:Tmax1-1
    E(T+1)=(p-k*E(T))*dt+E(T);
end
E1=zeros(1,Tmax2);
for T=1:Tmax2
    E1(T)=E((T-1)/dt+1);
end
T2=1:Tmax2;
E2=zeros(1,Tmax2);
E2(1,:)=(1-exp(-k*(T2-1)))*p/k;
plot(T2,E1,'ro',T2,E2,'b*');