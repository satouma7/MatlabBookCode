dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%未感染者数
I=zeros(1,Tmax);I(1)=1;%感染者数
R=zeros(1,Tmax);R(1)=0;%回復者数
X=1:Tmax;
b=[0.01 0.005 0.002 0.001];g=0.1;   %bの値を要素数4のベクトルとして用意
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節する
for J=1:4           %Jを1から4まで増加させる
    for T=1:Tmax-1  %b(J)として，Jの値に応じて異なるbの値を用いる
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');
    title(strcat('β=',num2str(b(J)),' /γ=',num2str(g),' /総感染者数=',num2str(S(1)-S(Tmax)) ));
end     %8行目まで戻り，Jの値を増加して計算し直す
