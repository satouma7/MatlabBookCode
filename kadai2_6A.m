M=round(10*rand(4,5));  %4�s5��̍s��M��0����10�̗�������
for I=1:4               %I��1����4�܂ő���������i�s�j
    for J=1:5           %J��1����5�܂ő���������i��j
        disp(strcat(num2str(I),'�s',num2str(J),'���', num2str(M(I,J)),'�ł�')); %�s��M��I�sJ��̒l��\������
    end                 %3�s�ڂ܂Ŗ߂�
end                     %2�s�ڂ܂Ŗ߂�
