M=ceil(rand(2,10)*3);               %2�s10��̍s��M��1����R�̃����_���Ȑ�������
Team1=0; Team2=0; Aiko=0;           %�`�[��1�̏�������Team1�C�`�[��2�̏�������Team2�C���������̐���Aiko�Ƃ���
for J=1:10                          %J��1����10�܂ő���������iJ��ځj
    for I=1:2                       %I��1����2�܂ő���������i�`�[��I�j
        switch M(I,J)               %M(I,J)�̒l�ɏ]���ďꍇ����
            case 1                  %M(I,J)��1�̏ꍇ�C
                Janken='�O�[';     % Janken��'�O�['����
            case 2                  %M(I,J)��2�̏ꍇ�C
                Janken='�`���L';    % Janken��'�`���L'����
            case 3                  %M(I,J)��3�̏ꍇ
                Janken='�p�[';     % Janken��'�p�['����
        end                         %5�s�ڂ����switch���͂����܂�
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));  %�`�[��I��J�l�ڂ̂���񂯂�̎��\��
    end                             %4�s�ڂ܂Ŗ߂�
    switch M(1,J)                   %M(I,J)�̒l�ɏ]���ďꍇ����
        case 1                      %�`�[��1��J�l�ڂ�1(�O�[)�̏ꍇ�C
            if M(2,J)==2            %�`�[��2��J�l�ڂ�2(�`���L)�̏ꍇ�C
                Kekka='�`�[���P�̏���';Team1=Team1+1;   %�`�[��1�̏����Ƃ��CTeam1��1��������
            elseif M(2,J)==3        %�`�[��2��J�l�ڂ�3(�p�[)�̏ꍇ�C
                Kekka='�`�[���Q�̏���';Team2=Team2+1;   %�`�[��2�̏����Ƃ��CTeam2��1��������
            else                    %����ȊO�̏ꍇ�C
                Kekka='������';Aiko=Aiko+1;            %���������Ƃ��CAiko��1��������
            end                     %17�s�ڂ����if���͂����܂�
        case 2                      %�`�[��1��J�l�ڂ�2(�`���L)�̏ꍇ�C
            if M(2,J)==1            %�`�[��2��J�l�ڂ�1(�O�[)�̏ꍇ�C
                Kekka='�`�[���Q�̏���';Team2=Team2+1;   %�`�[��2�̏����Ƃ��CTeam2��1��������
            elseif M(2,J)==3        %�`�[��2��J�l�ڂ�3(�p�[)�̏ꍇ�C
                Kekka='�`�[���P�̏���';Team1=Team1+1;   %�`�[��1�̏����Ƃ��CTeam1��1��������
            else                    %����ȊO�̏ꍇ�C
                Kekka='������';Aiko=Aiko+1;            %���������Ƃ��CAiko��1��������
            end                     %25�s�ڂ����if���͂����܂� 
        case 3                      %�`�[��1��J�l�ڂ�3(�p�[)�̏ꍇ�C
            if M(2,J)==1            %�`�[��2��J�l�ڂ�1(�O�[)�̏ꍇ�C
                Kekka='�`�[���P�̏���';Team1=Team1+1;    %�`�[��1�̏����Ƃ��CTeam1��1��������
            elseif M(2,J)==2        %�`�[��1��J�l�ڂ�2(�`���L)�̏ꍇ�C
                Kekka='�`�[���Q�̏���';Team2=Team2+1;    %�`�[��2�̏����Ƃ��CTeam2��1��������
            else                    %����ȊO�̏ꍇ�C
                Kekka='������';Aiko=Aiko+1;             %���������Ƃ��CAiko��1��������
            end                     %33�s�ڂ����if���͂����܂� 
    end                             %15�s�ڂ����switch���͂����܂�
    disp(strcat(num2str(J),'�Ԗڂ̏�����', Kekka));     %J�Ԗڂ̏����̌��ʂƂ���Kekka�̓��e��\��
end                                 %3�s�ڂ܂Ŗ߂�CJ�̐���1���₷
disp(strcat('�`�[���P��',num2str(Team1),'��',num2str(Team2),'�s',num2str(Aiko),'��������')); %�`�[��1�̏�����Team1�C������Team2�C����������Aiko��\��
disp(strcat('�`�[���Q��',num2str(Team2),'��',num2str(Team1),'�s',num2str(Aiko),'��������')); %�`�[��2�̏�����Team2�C������Team1�C����������Aiko��\��
