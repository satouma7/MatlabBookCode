Tmax=500;Xmax=100;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(48:52,48:52,1)=1;                                                       
dt=0.01;da=20;aa=6;di=0.1;ii=-2;ia=-30;ai=0.5;
Amax=2;Imax=2;
for T=1:Tmax
    A(:,:,T+1)=dt*(4*da*del2(A(:,:,T))+aa*A(:,:,T)+ia*I(:,:,T))+A(:,:,T);
    I(:,:,T+1)=dt*(4*di*del2(I(:,:,T))+ii*I(:,:,T)+ai*A(:,:,T))+I(:,:,T);
    A(:,:,T+1)=A(:,:,T+1).*((A(:,:,T+1)>0)&(A(:,:,T+1)<Amax))+Amax.*(A(:,:,T+1)>Amax);
    I(:,:,T+1)=I(:,:,T+1).*((I(:,:,T+1)>0)&(I(:,:,T+1)<Imax))+Imax.*(I(:,:,T+1)>Imax);
end
figure('Position',[0 300 1000 400]);
for T=1:10:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end