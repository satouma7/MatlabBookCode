Tmax=500;Xmax=100;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(48:52,48:52,1)=1;                          
dt=0.01;da=20;aa=6;di=0.1;ii=-2;ia=-30;ai=0.5;
Amax=2;Imax=2;      %AとIの上限値Amax, Imaxを決める
for T=1:Tmax
    A(:,:,T+1)=dt*(4*da*del2(A(:,:,T))+aa*A(:,:,T)+ia*I(:,:,T))+A(:,:,T);
    I(:,:,T+1)=dt*(4*di*del2(I(:,:,T))+ii*I(:,:,T)+ai*A(:,:,T))+I(:,:,T);
    for Y=1:100     %YとXを1から100まで変化させる
       for X=1:100
           if A(Y,X,T+1)<0      %A(Y,X,T+1)の上限下限を設定
               A(Y,X,T+1)=0;
           elseif A(Y,X,T+1)>Amax
               A(Y,X,T+1)=Amax;
           end
           if I(Y,X,T+1)<0      %I(Y,X,T+1) の上限下限を設定
               I(Y,X,T+1)=0;
           elseif I(Y,X,T+1)>Imax
               I(Y,X,T+1)=Imax;
           end
       end
    end
end
figure('Position',[0 300 1000 400]);    %ウィンドウのサイズと位置は適宜調節して下さい
for T=1:20:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end

