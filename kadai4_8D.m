Tmax=10000;Xmax=100;
dt=0.02;dx=1;dx2=dx*dx;
V=zeros(Xmax,Xmax,Tmax);W=zeros(Xmax,Xmax,Tmax);
I=zeros(Xmax,Xmax);I(50:51,50:51)=1;
a=0.7;b=0.8;c=10;d=1;X=-2:0.01:2;Y1=-(X.^3)/3+X;Y2=(X+a)/b;%�k���N���C�����v���b�g���邽�߂̃x�N�g��X, Y1, Y2��p��
for T=1:Tmax-1
        V(:,:,T+1)=V(:,:,T)+dt*(  c*( - (V(:,:,T).^3)/3+ V(:,:,T) -W(:,:,T) + I ) + 4*d*del2(V(:,:,T)) );
        W(:,:,T+1)=W(:,:,T)+dt*(V(:,:,T)-b*W(:,:,T)+a)/c;
end
figure('Position',[0 300 1000 400]);
for T=1000:10:Tmax
    subplot(1,2,1);imagesc(V(:,:,T),[-2 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);plot(X, Y1, X, Y2, V(71,51,T), W(71,51,T), '*');ylim([-1 1]);%�k���N���C���ƂƂ���V, W�̒l��*�Ńv���b�g
    pause(0.0001);
end