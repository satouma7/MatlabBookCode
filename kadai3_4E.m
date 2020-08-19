dt=0.01;Tmax=10000;N=500;
I=zeros(1,Tmax);I(1)=N/100; %まずIの初期値を計算
S=zeros(1,Tmax);S(1)=N-I(1);%Iの初期値からSの初期値を計算
R=zeros(1,Tmax);R(1)=0;
X=1:Tmax;R0=2;
b=[0.0001 0.001 0.01 0.1];	%bの値を要素数4のベクトルとして用意
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節して下さい
for J=1:4           %Jを1から4まで増加させる
    g=b(J)/R0;      %b(J)とR0からgの値を計算
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');
    title(strcat('β=',num2str(b(J)),' /γ=',num2str(g),' /総感染者数=',num2str(S(1)-S(Tmax)) ));
end     %8行目まで戻り，Jの値を増加して計算し直す