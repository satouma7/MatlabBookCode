Tmax=10000;Xmax=100;    %もしくはTmax=5000;Xmax=20;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(:,:,1)=rand(Xmax,Xmax);
Ap=zeros(Xmax,Xmax);Ip=zeros(Xmax,Xmax);
dt=0.1;dx=1;dx2=dx*dx;
da=0.02;di=0.5;ka=0.03;ki=0.06;
c1=0.08;c2=-0.08;c3=0.1;c4=0.11;c5=0;c6=-0.15;
Apmax=0.2;Ipmax=0.5;
Atemp=A(:,:,1);Itemp=I(:,:,1);
Aright=Atemp;Aleft=Atemp;Aup=Atemp;Adown=Atemp;
Iright=Itemp;Ileft=Itemp;Iup=Itemp;Idown=Itemp;
for T=1:Tmax-1   
    Ap=c1*A(:,:,T)+c2*I(:,:,T)+c3;
    Ip=c4*A(:,:,T)+c5*I(:,:,T)+c6; 
    Ap=((Ap<Apmax)&(Ap>0)).*Ap+(Ap>Apmax).*Apmax;   %Apの上限と下限を設定
    Ip=((Ip<Ipmax)&(Ip>0)).*Ip+(Ip>Ipmax).*Ipmax;   %Ipの上限と下限を設定
    Atemp=A(:,:,T);Itemp=I(:,:,T);                  %12~22行でAとIの反応拡散の高速計算
    Aright(:,Xmax)=Atemp(:,Xmax);Aright(:,1:Xmax-1)=Atemp(:,2:Xmax);
    Aleft(:,1)=Atemp(:,1);Aleft(:,2:Xmax)=Atemp(:,1:Xmax-1);
    Aup(Xmax,:)=Atemp(Xmax,:);Aup(1:Xmax-1,:)=Atemp(2:Xmax,:);
    Adown(1,:)=Atemp(1,:);Adown(2:Xmax,:)=Atemp(1:Xmax-1,:);
    Iright(:,Xmax)=Itemp(:,Xmax);Iright(:,1:Xmax-1)=Itemp(:,2:Xmax);
    Ileft(:,1)=Itemp(:,1);Ileft(:,2:Xmax)=Itemp(:,1:Xmax-1);
    Iup(Xmax,:)=Itemp(Xmax,:);Iup(1:Xmax-1,:)=Itemp(2:Xmax,:);
    Idown(1,:)=Itemp(1,:);Idown(2:Xmax,:)=Itemp(1:Xmax-1,:);
    A(:,:,T+1)=dt*(da/dx2*(Aright+Aleft+Aup+Adown-4*Atemp)+Ap-ka*A(:,:,T))+A(:,:,T);
    I(:,:,T+1)=dt*(di/dx2*(Iright+Ileft+Iup+Idown-4*Itemp)+Ip-ki*I(:,:,T))+I(:,:,T);
end
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節する
for T=1:100:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 10]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 10]);set(gca,'YDir','normal');colorbar;
    pause(0.0001); 
end
