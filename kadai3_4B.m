dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%sensitive
I=zeros(1,Tmax);I(1)=1;%infected
R=zeros(1,Tmax);R(1)=0;%recovered
X=1:Tmax;
b=0.01;g=[0.1 0.2 0.5 1.0];
figure('Position',[0 400 1000 250]);
for J=1:4
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g(J)*I(T)   );
        R(T+1)=R(T)+dt*(               g(J)*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');
    title(strcat('β=',num2str(b),' /γ=',num2str(g(J)),' /総感染者数=',num2str(S(1)-S(Tmax)) ));
end
