Tmax=5000;Xmax=100;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(46:50,46:50,1)=1; %A�̏������z��ݒ� �������� A(:,:,1)=rand(Xmax,Xmax);
Ap=zeros(Xmax,Xmax);Ip=zeros(Xmax,Xmax); %2�����s��Ap��Ip��p��
dt=0.1;dx=1;
da=0.02;di=0.5;ka=0.03;ki=0.06;
c1=0.08;c2=-0.08;c3=0.1;c4=0.11;c5=0;c6=-0.15;
Apmax=0.2;Ipmax=0.5;
for T=1:Tmax-1   
   Ap=c1*A(:,:,T)+c2*I(:,:,T)+c3;   %A�̎Y����Ap���v�Z
   Ip=c4*A(:,:,T)+c5*I(:,:,T)+c6;   %I�̎Y����Ip���v�Z
   Ap=((Ap<Apmax)&(Ap>0)).*Ap+(Ap>Apmax).*Apmax;    %Ap�̏���Ɖ�����ݒ�
   Ip=((Ip<Ipmax)&(Ip>0)).*Ip+(Ip>Ipmax).*Ipmax;    %Ip�̏���Ɖ�����ݒ�
   A(:,:,T+1)=dt*(4*da*del2(A(:,:,T))+Ap-ka*A(:,:,T))+A(:,:,T);
   I(:,:,T+1)=dt*(4*di*del2(I(:,:,T))+Ip-ki*I(:,:,T))+I(:,:,T);
end
figure('Position',[0 300 1000 400]);    %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
for T=1:100:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 10]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 10]);set(gca,'YDir','normal');colorbar;
    pause(0.0001); 
end