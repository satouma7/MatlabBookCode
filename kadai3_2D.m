Tmax1=5000;dt=0.01;Tmax2=Tmax1*dt;
p=1;k=0.1;
E=zeros(1,Tmax1);   %オイラー法による解を保存するベクトルEを用意
for T=1:Tmax1-1     %終了時刻をTmax1としてオイラー法でEを計算
    E(T+1)=(p-k*E(T))*dt+E(T);
end
E1=zeros(1,Tmax2);  %Eを時間方向に間引いた値を保存するベクトルE1を用意
for T=1:Tmax2       %終了時刻をTmax2としてEを時間方向に間引いたE1を計算
    E1(T)=E((T-1)/dt+1);    %図3.5に従い，EとE1を対応づける
end
T2=1:Tmax2;         %終了時刻をTmax2とした時間ベクトルT2を用意
E2=zeros(1,Tmax2);  %厳密解を保存するベクトルE2を用意
E2(1,:)=(1-exp(-k*(T2-1)))*p/k; %T2を用いて厳密解E2を計算
plot(T2,E1,'ro',T2,E2,'b*');    %数値解E1と厳密解E2をプロット
