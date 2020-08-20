Tmax=200;Xmax=25;
dt=0.1;dx=1;dx2=dx*dx;  %dt, dx, dx2�̒l��ݒ�
de=1;ke=1;ae=1;ea=10;
E=zeros(Xmax,Xmax,Tmax);
A=zeros(Xmax,Xmax,Tmax);A(:,1,1)=0.5;   %�����xA�̏����p�^�[����ݒ�
Etemp=zeros(Xmax,Xmax);Eright=Etemp;Eleft=Etemp;Eup=Etemp;Edown=Etemp;
for T=1:Tmax-1
    Etemp=E(:,:,T);     %8~13�s�ڂ�E�̔����g�U���v�Z
    Eright(:,Xmax)=Etemp(:,Xmax);Eright(:,1:Xmax-1)=Etemp(:,2:Xmax);
    Eleft(:,1)=Etemp(:,1);Eleft(:,2:Xmax)=Etemp(:,1:Xmax-1);
    Eup(Xmax,:)=Etemp(Xmax,:);Eup(1:Xmax-1,:)=Etemp(2:Xmax,:);
    Edown(1,:)=Etemp(1,:);Edown(2:Xmax,:)=Etemp(1:Xmax-1,:);
    E(:,:,T+1)=dt*(de*(Eright+Eleft+Eup+Edown-4*Etemp)/dx2-ke*E(:,:,T)+ae*A(:,:,T).*(1-A(:,:,T)))+E(:,:,T);
    A(:,:,T+1)=dt*(ea*(1-A(:,:,T)).*E(:,:,T))+A(:,:,T); %A�̕ω����v�Z
end
figure('Position',[0 400 1000 250]);    %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
for T=1:10:100      %�����͓K���ɕς��ĉ�����
    subplot(1,2,1);imagesc(E(:,:,T),[0 0.5]);set(gca,'YDir','normal');title('EGF');colorbar;
    subplot(1,2,2);imagesc(A(:,:,T),[0 1]);set(gca,'YDir','normal');title('AS-C');colorbar;
    pause(0.001);
end