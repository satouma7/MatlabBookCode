Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);W=B;D=B;R=zeros(Xmax,Xmax);
dt=0.1;d=1;k=0.1;a=1;
cb=zeros(Xmax,Xmax);cb(51:100,41:60)=0.5;
cw=zeros(Xmax,Xmax);cw(1:50,41:60)=0.5;
clone=ones(5,5);%もしくは clone=[0 1 1 1 0; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 0 1 1 1 0];
R(31:35,3:7)=clone;R(31:35,23:27)=clone;    %活性化Dpp受容体の空間分布Rを決める
R(31:35,43:47)=clone;R(31:35,63:67)=clone;  %活性化Dpp受容体の空間分布Rを決める
for T=1:Tmax
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+cb)+B(:,:,T);
    W(:,:,T+1)=dt*(4*d*del2(W(:,:,T))-k*W(:,:,T)+cw)+W(:,:,T);
    D(:,:,T+1)=dt*(a*(B(:,:,T)+R).*W(:,:,T)-k*D(:,:,T))+D(:,:,T);%B, R, WによるDの産生・分解の計算
end
figure('Position',[0 400 1000 250]);    %ウィンドウのサイズと位置は適宜調節する
for T=1:20:Tmax
    subplot(1,3,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,2);imagesc(W(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,3);imagesc(D(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end
