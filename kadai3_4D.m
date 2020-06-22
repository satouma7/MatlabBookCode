dt=0.01;Tmax=10000;
S=zeros(1,Tmax);
I=zeros(1,Tmax);
R=zeros(1,Tmax);R(1)=0;
X=1:Tmax;
b=0.001;g=0.1;
N=[100 200 300 400];
figure('Position',[0 400 1000 250]);
for J=1:4
    I(1)=N(J)*0.01;
    S(1)=N(J)-I(1);
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(               g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');ylim([0 N(J)]);
    title(strcat('総感染者数=',num2str(S(1)-S(Tmax)),' /感染者率=',num2str((S(1)-S(Tmax))/N(J)) ));
end
