Tmax=5000;dt=0.01;
p=1;k=0.1;
E=zeros(1,Tmax);
for T=1:Tmax-1      %Tを1からTmax-1まで変化させる
    E(1,T+1)=(p-k*E(1,T))*dt+E(1,T);    %オイラー法に従いEの値を計算 E(T+1)=(p-k*E(T))*dt+E(T);　としても良い
end
plot(1:Tmax,E(1,:));    %plot(1:Tmax, E); としても良い
