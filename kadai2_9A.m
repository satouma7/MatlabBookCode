M=ceil(rand(2,10)*3);       %2�s10��̍s��M��1����R�̃����_���Ȑ������� 
Team1=0;Team2=0;Aiko=0;     %�`�[��1�̏�������Team1�C�`�[��2�̏�������Team2�C���������̐���Aiko�Ƃ���
for J=1:10                  %J��1����10�܂ő���������iJ��ځj
    for I=1:2               %I��1����2�܂ő���������i�`�[��I�j
        switch M(I,J)       %M(I,J)�̒l�ɏ]���ďꍇ����
            case 1          %M(I,J)��1�̏ꍇ�C
                Janken='�O�[';  %Janken��'�O�['����
            case 2          %M(I,J)��2�̏ꍇ�C
                Janken='�`���L'; %Janken��'�`���L'����
            case 3          %M(I,J)��3�̏ꍇ�C
                Janken='�p�[';  %Janken��'�p�['����
        end                 %5�s�ڂ����switch���͂����܂�
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));  %�`�[��I��J�l�ڂ̂���񂯂�̎��\��
    end                     %4�s�ڂ܂Ŗ߂�
    Result=Hantei(M(1,J),M(2,J));   %J�l�ڂ̃`�[��1�̎�M(1,J)�ƃ`�[��2�̎�M(2,J)��Hantei�֐��ɓn���C���ʂ�Result�ɑ��
    switch Result           %Result�̒l�ɏ]���ďꍇ����
        case 1              %Result��1�̏ꍇ�C
            Kekka='�`�[���P';Team1=Team1+1;    %�`�[��1�̏����Ƃ��CTeam1��1��������
        case 2              %Result��2�̏ꍇ�C
            Kekka='�`�[��2';Team2=Team2+1;    %�`�[��2�̏����Ƃ��CTeam2��1��������
        case 0              %Result��0�̏ꍇ�C
            Kekka='������';Aiko=Aiko+1;        %���������Ƃ��CAiko��1��������
    end                     %16�s�ڂ����switch���͂����܂�
    disp(strcat(num2str(J),'�Ԗڂ̏�����', Kekka)); %J�Ԗڂ̏����̌��ʂƂ���Kekka�̓��e��\��
end                         %3�s�ڂ܂Ŗ߂�
disp(strcat('�`�[���P��', num2str(Team1),'��',num2str(Team2),'�s',num2str(Aiko),'��������'));%�`�[��1�̏�����Team1�C������Team2�C����������Aiko��\��
disp(strcat('�`�[���Q��', num2str(Team2),'��',num2str(Team1),'�s',num2str(Aiko),'��������'));%�`�[��2�̏�����Team2�C������Team1�C����������Aiko��\��