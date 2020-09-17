dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%–¢Š´õŽÒ
I=zeros(1,Tmax);I(1)=1;%Š´õŽÒ
R=zeros(1,Tmax);R(1)=0;%‰ñ•œŽÒ
b=0.01;g=0.01;
for T=1:Tmax-1
    S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
    I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
    R(T+1)=R(T)+dt*(               g*I(T)   );
end
X=1:Tmax;
plot(X,S,'g--',X,I,'r',X,R,'b:');
title(strcat('ƒÀ=',num2str(b),' /ƒÁ=',num2str(g),' /‘Š´õŽÒ”=',num2str(S(1)-S(Tmax)) ));
