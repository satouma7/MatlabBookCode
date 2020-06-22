dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%sensitive
I=zeros(1,Tmax);I(1)=1;%infected
R=zeros(1,Tmax);R(1)=0;%recovered
X=1:Tmax;
b=[0.01 0.005 0.002 0.001];g=0.1;
figure('Position',[0 400 1000 250]);
for J=1:4
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');
    title(strcat('��=',num2str(b(J)),' /��=',num2str(g),' /�������Ґ�=',num2str(S(1)-S(Tmax)) ));
end