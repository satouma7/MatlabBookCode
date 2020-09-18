Tmax=10000;Xmax=100;        %もしくはTmax=5000;
dt=0.02;dx=1;dx2=dx*dx;
V=zeros(Xmax,Xmax,Tmax);W=zeros(Xmax,Xmax,Tmax);
I=zeros(Xmax,Xmax);I(50:51,50:51)=1;    %電流入力Iの空間パターンを設定
a=0.7;b=0.8;c=10;d=1;
for T=1:Tmax-1
        V(:,:,T+1)=V(:,:,T)+dt*(  c*( - (V(:,:,T).^3)/3+ V(:,:,T) -W(:,:,T) + I ) + 4*d*del2(V(:,:,T)) );
        W(:,:,T+1)=W(:,:,T)+dt*(V(:,:,T)-b*W(:,:,T)+a)/c;
end
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節する
for T=1:100:Tmax
    subplot(1,2,1);imagesc(V(:,:,T),[-2 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(W(:,:,T),[-1 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end
