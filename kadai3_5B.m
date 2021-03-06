dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%未感染者数
I=zeros(1,Tmax);I(1)=1;%感染者数
R=zeros(1,Tmax);R(1)=0;%回復者数
X=1:Tmax;
b=0.01;g=[0.1 0.2 0.5 1.0];     %gの値を要素数4のベクトルとして用意
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節する
for J=1:4               %Jを1から4まで増加させる
    for T=1:Tmax-1      %g(J)として，Jの値に応じて異なるgの値を用いる
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g(J)*I(T)   );
        R(T+1)=R(T)+dt*(               g(J)*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');    %縦1行，横4列のタイルのJ番目にプロット
    title(strcat('β=',num2str(b),' /γ=',num2str(g(J)),' /総感染者数=',num2str(S(1)-S(Tmax)) ));
end     %8行目まで戻り，Jの値を増加して計算し直す
