dt=0.002;Tmax1=100000;
X=zeros(1,Tmax1);X(1)=30;%���H����
Y=zeros(1,Tmax1);Y(1)=10;%���H����
a=1;b=0.2;c=0.1;d=1;
for T=1:Tmax1-1
    X(T+1)=X(T)+dt*( a*X(T)         -b*X(T)*Y(T) );
    Y(T+1)=Y(T)+dt*( c*X(T)*Y(T)    -d*Y(T)      );
end
figure('Position',[0 300 1000 400]); %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
subplot(1,2,1);plot(1:Tmax1,X,'g',1:Tmax1,Y,'r--'); %���Ԃɑ΂���X��Y�̃v���b�g
subplot(1,2,2);plot(X,Y,'k'); %X�ɑ΂���Y�̃v���b�g