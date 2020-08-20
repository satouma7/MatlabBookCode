Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);
dt=0.1;d=1;k=0.1;dx=1;dx2=dx*dx;r=d*dt/dx2;
c=zeros(Xmax,Xmax);c(:,48:53)=0.5;  %Bの産生速度cのパターンを設定
for T=1:Tmax-1      %del2を使ったBの反応拡散の計算
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+c)+B(:,:,T);
end
for T=1:Tmax        %もしくは for T=1:20:Tmax
    imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end