M=ceil(rand(2,10)*3);
Team1=0; Team2=0; Aiko=0;
for J=1:10
    for I=1:2
        switch M(I,J)
            case 1
                Janken='�O�[';
            case 2
                Janken='�`���L';
            case 3
                Janken='�p�[';
        end
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));
    end
    switch M(1,J)
        case 1%�`�[���P���O�[�̂Ƃ�
            if M(2,J)==2%�`�[���Q���`���L�̂Ƃ�
                Kekka='�`�[���P�̏���';Team1=Team1+1;
            elseif M(2,J)==3%�`�[���Q���p�[�̂Ƃ�
                Kekka='�`�[���Q�̏���';Team2=Team2+1;
            else %�`�[���Q���O�[�̂Ƃ�
                Kekka='������';Aiko=Aiko+1;
            end
        case 2%�`�[���P���`���L�̂Ƃ�
            if M(2,J)==1%�`�[���Q���O�[�̂Ƃ�
                Kekka='�`�[���Q�̏���';Team2=Team2+1;
            elseif M(2,J)==3%�`�[���Q���p�[�̂Ƃ�
                Kekka='�`�[���P�̏���';Team1=Team1+1;
            else
                Kekka='������';Aiko=Aiko+1;
            end      
        case 3%�`�[���P���p�[�̂Ƃ�
            if M(2,J)==1%�`�[���Q���O�[�̂Ƃ�
                Kekka='�`�[���P�̏���';Team1=Team1+1;
            elseif M(2,J)==2%�`�[���Q���`���L�̂Ƃ�
                Kekka='�`�[���Q�̏���';Team2=Team2+1;
            else
                Kekka='������';Aiko=Aiko+1;
            end
    end
    disp(strcat(num2str(J),'�Ԗڂ̏�����', Kekka));
end
disp(strcat('�`�[���P��',num2str(Team1),'��',num2str(Team2),'�s',num2str(Aiko),'��������'));
disp(strcat('�`�[���Q��',num2str(Team2),'��',num2str(Team1),'�s',num2str(Aiko),'��������'));