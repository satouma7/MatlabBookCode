Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);S=zeros(Xmax,Xmax,Tmax);
dt=0.1;d=1;k=0.1;a=1;
c=zeros(100,100);c(:,48:53)=0.5;
for T=1:Tmax-1
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+c)+B(:,:,T);
    S(:,:,T+1)=dt*(a*B(:,:,T)-k*S(:,:,T))+S(:,:,T);
end
figure('Position',[0 300 1000 400]);
for T=1:Tmax
    subplot(1,2,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(S(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end

