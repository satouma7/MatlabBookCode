M=ceil(rand(2,10)*3);           %2�s10��̍s��M��1����R�̃����_���Ȑ�������
for J=1:10                      %J��1����10�܂ő���������iJ��ځj
    for I=1:2                   %I��1����2�܂ő���������i�`�[��I�j
        switch M(I,J)           %M(I,J)�̒l�ɏ]���ďꍇ����
            case 1              %M(I,J)��1�̏ꍇ�C
                Janken='�O�[';   % Janken��'�O�['����
            case 2              %M(I,J)��2�̏ꍇ�C
                Janken='�`���L'; % Janken��'�`���L'����
            case 3              %M(I,J)��3�̏ꍇ�C
                Janken='�p�[';   % Janken��'�p�['����
        end                     %4�s�ڂ����switch���͂����܂�
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));   %�`�[��I��J�l�ڂ̂���񂯂�̎��\��
    end                         %3�s�ڂ܂Ŗ߂�
end                             %2�s�ڂ܂Ŗ߂�