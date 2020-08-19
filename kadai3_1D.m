Tmax1=5000;dt=0.01;Tmax2=Tmax1*dt;
p=1;k=0.1;
E=zeros(1,Tmax1);   %�I�C���[�@�ɂ�����ۑ�����x�N�g��E��p��
for T=1:Tmax1-1     %�I��������Tmax1�Ƃ��ăI�C���[�@��E���v�Z
    E(T+1)=(p-k*E(T))*dt+E(T);
end
E1=zeros(1,Tmax2);  %E�����ԕ����ɊԈ������l��ۑ�����x�N�g��E1��p��
for T=1:Tmax2       %�I��������Tmax2�Ƃ���E�����ԕ����ɊԈ�����E1���v�Z
    E1(T)=E((T-1)/dt+1);    %�}3.5�ɏ]���CE��E1��Ή��Â���
end
T2=1:Tmax2;         %�I��������Tmax2�Ƃ������ԃx�N�g��T2��p��
E2=zeros(1,Tmax2);  %��������ۑ�����x�N�g��E2��p��
E2(1,:)=(1-exp(-k*(T2-1)))*p/k; %T2��p���Č�����E2���v�Z
plot(T2,E1,'ro',T2,E2,'b*');    %���l��E1�ƌ�����E2���v���b�g