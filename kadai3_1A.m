Tmax=5000;dt=0.01;
p=1;k=0.1;
E=zeros(1,Tmax);
for T=1:Tmax-1      %T��1����Tmax-1�܂ŕω�������
    E(1,T+1)=(p-k*E(1,T))*dt+E(1,T);    %�I�C���[�@�ɏ]��E�̒l���v�Z E(T+1)=(p-k*E(T))*dt+E(T);�@�Ƃ��Ă��ǂ�
end
plot(1:Tmax,E(1,:));    %plot(1:Tmax, E); �Ƃ��Ă��ǂ�