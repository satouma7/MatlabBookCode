dt=0.01;Tmax=10000;N=500;
I=zeros(1,Tmax);I(1)=N/100; %�܂�I�̏����l���v�Z
S=zeros(1,Tmax);S(1)=N-I(1);%I�̏����l����S�̏����l���v�Z
R=zeros(1,Tmax);R(1)=0;
X=1:Tmax;R0=2;
b=[0.0001 0.001 0.01 0.1];	%b�̒l��v�f��4�̃x�N�g���Ƃ��ėp��
figure('Position',[0 400 1000 250]);    %�E�B���h�E�̃T�C�Y�ƈʒu�͓K�X���߂��ĉ�����
for J=1:4           %J��1����4�܂ő���������
    g=b(J)/R0;      %b(J)��R0����g�̒l���v�Z
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g--',X,I,'r',X,R,'b:');
    title(strcat('��=',num2str(b(J)),' /��=',num2str(g),' /�������Ґ�=',num2str(S(1)-S(Tmax)) ));
end     %8�s�ڂ܂Ŗ߂�CJ�̒l�𑝉����Čv�Z������