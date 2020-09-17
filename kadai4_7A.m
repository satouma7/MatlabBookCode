Tmax=500;Xmax=100;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(48:52,48:52,1)=1; %AのT=1における初期分布を設定  
dt=0.01;da=20;aa=6;di=0.1;ii=-2;ia=-30;ai=0.5;
for T=1:Tmax        %以下，del2によるAとIの反応拡散の計算
    A(:,:,T+1)=dt*(4*da*del2(A(:,:,T))+aa*A(:,:,T)+ia*I(:,:,T))+A(:,:,T);
    I(:,:,T+1)=dt*(4*di*del2(I(:,:,T))+ii*I(:,:,T)+ai*A(:,:,T))+I(:,:,T);
end
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節する
for T=1:20:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end

