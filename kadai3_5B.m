global a b c d
dt=0.01;Tmax1=10000;Tmax2=Tmax1*dt;
X=zeros(1,Tmax1);X(1)=30;
Y=zeros(1,Tmax1);Y(1)=10;
a=1;b=0.2;c=0.1;d=1;
[T,L]=ode45('kadai3_5eq', [1 Tmax2],[X(1);Y(1)]);
figure('Position',[0 300 1000 400]);
subplot(1,2,1);plot(T,L(:,1),'g',T,L(:,2),'r--');ylim([0 40]);
subplot(1,2,2);plot(L(:,1),L(:,2),'k');xlim([0 40]);ylim([0 20]);