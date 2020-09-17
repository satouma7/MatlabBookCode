dt=0.002;Tmax1=100000;
X=zeros(1,Tmax1);X(1)=30;%草食動物の数
Y=zeros(1,Tmax1);Y(1)=10;%肉食動物の数
a=1;b=0.2;c=0.1;d=1;
for T=1:Tmax1-1
    X(T+1)=X(T)+dt*( a*X(T)         -b*X(T)*Y(T) );
    Y(T+1)=Y(T)+dt*( c*X(T)*Y(T)    -d*Y(T)      );
end
figure('Position',[0 300 1000 400]); %ウィンドウのサイズと位置は適宜調節する
subplot(1,2,1);plot(1:Tmax1,X,'g',1:Tmax1,Y,'r--'); %時間に対するXとYのプロット
subplot(1,2,2);plot(X,Y,'k'); %Xに対するYのプロット
