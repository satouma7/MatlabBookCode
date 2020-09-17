dt=0.01;Tmax=10000;
S=zeros(1,Tmax);%未感染者
I=zeros(1,Tmax);%感染者
R=zeros(1,Tmax);R(1)=0;%回復者
X=1:Tmax;
b=0.001;g=0.1;
N=[100 200 300 400];    %Nの値を要素数4のベクトルとして用意
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節して下さい
for J=1:4               %Jを1から4まで増加させる
    I(1)=N(J)*0.01;     %N(J)の値から初期の感染者数I(1)を計算
    S(1)=N(J)-I(1);     %N(J)とI(1)から初期の未感染者数S(1)を計算
    for T=1:Tmax-1      %I(1)とS(1)の値に応じてS, I, Rの時間変化を計算
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(               g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');ylim([0 N(J)]);
    title(strcat('総感染者数=',num2str(S(1)-S(Tmax)),' /感染者率=',num2str((S(1)-S(Tmax))/N(J)) ));
end     %9行目まで戻り，Jの値を増加して計算し直す
