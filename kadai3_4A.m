dt=0.01;Tmax=10000;dint=1000;
d=zeros(1,Tmax);d(dint-100:dint)=1;
d=repmat(d(1,1:dint),1,fix(Tmax/dint));
G=zeros(1,Tmax);G(1)=1;%血糖値
I=zeros(1,Tmax);I(1)=1;%インスリン濃度
a=1;b=1;k1=0.1;k2=0.1;
for T=1:Tmax-1
    G(T+1)=G(T)+dt*( -k1*G(T)*(1+a*I(T))      +   d(T)  );
    I(T+1)=I(T)+dt*(   b*G(T)  - k2*I(T));
end
Gave=sum(G(1,Tmax/2+1:Tmax))*2/Tmax;
X=1:Tmax;
plot(X,G,'g',X,I,'r:',X,d,'b--');ylim([0 5]);
title(strcat('a=',num2str(a),' /b=',num2str(b),' /Gave=',num2str(Gave)));
