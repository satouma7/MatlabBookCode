global a b c d  %a, b, c, dをグローバル変数と宣言
dt=0.01;Tmax1=10000;Tmax2=Tmax1*dt;
X=zeros(1,Tmax1);X(1)=30;
Y=zeros(1,Tmax1);Y(1)=10;
a=1;b=0.2;c=0.1;d=1;
[T,L]=ode45('kadai3_6eq', [1 Tmax2],[X(1);Y(1)]);   %kadai3_6eqの関数の数値解をode45を用いて計算
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節する
subplot(1,2,1);plot(T,L(:,1),'g',T,L(:,2),'r--');ylim([0 40]);  %横軸をTとしてXとYの計算結果L(:,1)とL(:,2)をプロット
subplot(1,2,2);plot(L(:,1),L(:,2),'k');xlim([0 40]);ylim([0 20]);   %横軸をXの計算結果L(:,1)，縦軸をYの計算結果L(:,2)でプロット
