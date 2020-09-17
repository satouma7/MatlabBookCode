dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%未感染者数
I=zeros(1,Tmax);I(1)=1;%感染者数
R=zeros(1,Tmax);R(1)=0;%回復者数
b=0.01;g=0.01;
for T=1:Tmax-1
    S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
    I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
    R(T+1)=R(T)+dt*(               g*I(T)   );
end
X=1:Tmax;
plot(X,S,'g--',X,I,'r',X,R,'b:');
title(strcat('β=',num2str(b),' /γ=',num2str(g),' /‘総感染者数”=',num2str(S(1)-S(Tmax)) ));
