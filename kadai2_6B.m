A=ceil(3*rand+2);       %A��3����T�̃����_���Ȑ�������
B=fix(4*rand+3);        %B��4����7�̃����_���Ȑ�������
M=round(10*rand(A,B));  %A�sB��̍s��M��0����10�̗�������
disp(strcat(num2str(A),'�s',num2str(B),'��̍s��ł�'));   %�s��M�̍s��A�Ɨ�B��\������
for i=1:A               %I��1����A�܂ő���������i�s�j
    for j=1:B           %J��1����B�܂ő���������i��j
        disp(strcat(num2str(i),'�s',num2str(j),'���', num2str(M(i,j)),'�ł�')); %�s��M��A�sB��̒l��\������
    end                 %6�s�ڂ܂Ŗ߂�
end                     %5�s�ڂ܂Ŗ߂�