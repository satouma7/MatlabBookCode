M=ceil(rand(2,10)*3);           %2�s10��̍s��M��1����R�̃����_���Ȑ�������
for J=1:10                      %J��1����10�܂ő���������iJ��ځj
    for I=1:2                   %I��1����2�܂ő���������i�`�[��I�j
        if M(I,J)==1            %����M(I,J)��1�̏ꍇ�C
            Janken='�O�[';     % Janken��'�O�['����
        elseif M(I,J)==2        %�����ł͂Ȃ�����M(I,J)��2�̏ꍇ�C
            Janken='�`���L';    % Janken��'�`���L'����
        else                    %����ȊO�̏ꍇ�C
            Janken='�p�[';     % Janken��'�p�['����
        end                     %4�s�ڂ����if���͂����܂�
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));  %�`�[��I��J�l�ڂ̂���񂯂�̎��\��
    end                         %3�s�ڂ܂Ŗ߂�
end                             %2�s�ڂ܂Ŗ߂�