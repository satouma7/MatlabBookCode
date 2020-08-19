dt=0.01;Tmax=10000;
S=zeros(1,Tmax);%��������
I=zeros(1,Tmax);%������
R=zeros(1,Tmax);R(1)=0;%�񕜎�
X=1:Tmax;
b=0.001;g=0.1;
N=[100 200 300 400];    %N�̒l��v�f��4�̃x�N�g���Ƃ��ėp��
figure('Position',[0 400 1000 250]);    %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
for J=1:4               %J��1����4�܂ő���������
    I(1)=N(J)*0.01;     %N(J)�̒l���珉���̊����Ґ�I(1)���v�Z
    S(1)=N(J)-I(1);     %N(J)��I(1)���珉���̖������Ґ�S(1)���v�Z
    for T=1:Tmax-1      %I(1)��S(1)�̒l�ɉ�����S, I, R�̎��ԕω����v�Z
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(               g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');ylim([0 N(J)]);
    title(strcat('�������Ґ�=',num2str(S(1)-S(Tmax)),' /�����җ�=',num2str((S(1)-S(Tmax))/N(J)) ));
end     %9�s�ڂ܂Ŗ߂�CJ�̒l�𑝉����Čv�Z������
