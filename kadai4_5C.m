Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);S=zeros(Xmax,Xmax,Tmax);
dt=0.1;dx=1;dx2=dx*dx;d=1;k=0.1;a=1;
c=zeros(100,100);c(:,48:53)=0.5;
Btemp=B(:,:,1);Bright=Btemp;Bleft=Btemp;Bup=Btemp;Bdown=Btemp;%省略可
for T=1:Tmax-1
    Btemp=B(:,:,T);     %以下，行列を使ったBの反応拡散の高速計算
    Bright(:,Xmax)=Btemp(:,Xmax);Bright(:,1:Xmax-1)=Btemp(:,2:Xmax);
    Bleft(:,1)=Btemp(:,1);Bleft(:,2:Xmax)=Btemp(:,1:Xmax-1);
    Bup(Xmax,:)=Btemp(Xmax,:);Bup(1:Xmax-1,:)=Btemp(2:Xmax,:);
    Bdown(1,:)=Btemp(1,:);Bdown(2:Xmax,:)=Btemp(1:Xmax-1,:);
    B(:,:,T+1)=dt*(d/dx2*(Bright+Bleft+Bup+Bdown-4*Btemp)-k*Btemp+c)+Btemp;
    S(:,:,T+1)=dt*(a*Btemp-k*S(:,:,T))+S(:,:,T);
end
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節して下さい
for T=1:Tmax        %もしくは for T=1:20:Tmax
    subplot(1,2,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(S(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end