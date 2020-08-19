dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;%��������
I=zeros(1,Tmax);I(1)=1;%������
R=zeros(1,Tmax);R(1)=0;%�񕜎�
X=1:Tmax;
b=0.01;g=[0.1 0.2 0.5 1.0];     %g�̒l��v�f��4�̃x�N�g���Ƃ��ėp��
figure('Position',[0 400 1000 250]);    %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
for J=1:4               %J��1����4�܂ő���������
    for T=1:Tmax-1      %g(J)�Ƃ��āCJ�̒l�ɉ����ĈقȂ�g�̒l��p����
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g(J)*I(T)   );
        R(T+1)=R(T)+dt*(               g(J)*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');    %�c1�s�C��4��̃^�C����J�ԖڂɃv���b�g
    title(strcat('��=',num2str(b),' /��=',num2str(g(J)),' /�������Ґ�=',num2str(S(1)-S(Tmax)) ));
end     %8�s�ڂ܂Ŗ߂�CJ�̒l�𑝉����Čv�Z������