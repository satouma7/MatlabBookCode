Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);W=B;D=B;
dt=0.1;d=1;k=0.1;a=1;
cb=zeros(Xmax,Xmax);cb(51:100,41:60)=0.5;
cw=zeros(Xmax,Xmax);cw(1:50,41:60)=0.5;
for T=1:Tmax-1
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+cb)+B(:,:,T);
    W(:,:,T+1)=dt*(4*d*del2(W(:,:,T))-k*W(:,:,T)+cw)+W(:,:,T);
    D(:,:,T+1)=dt*(a*B(:,:,T).*W(:,:,T)-k*D(:,:,T))+D(:,:,T);%Dの産生・分解の計算
end
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節して下さい
for T=1:Tmax        %もしくは for T=1:20:Tmax
    subplot(1,3,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,2);imagesc(W(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,3);imagesc(D(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end 