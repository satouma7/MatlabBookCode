M=ceil(rand(2,10)*3);
Team1=0;Team2=0;Aiko=0;
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
    Result=Hantei2(M(1,J),M(2,J));
    switch Result
        case 1
            Kekka='�`�[���P';Team1=Team1+1;
        case 2
            Kekka='�`�[���Q';Team2=Team2+1;
        case 0
            Kekka='������';Aiko=Aiko+1;
    end
    disp(strcat(num2str(J),'�l�ڂ�', Kekka,'�ł�'));
end
disp(strcat('�`�[���P�̌��ʂ�', num2str(Team1),'��',num2str(Team2),'�s',num2str(Aiko),'��������'));
disp(strcat('�`�[���Q�̌��ʂ�', num2str(Team2),'��',num2str(Team1),'�s',num2str(Aiko),'��������'));

function [ R ] = Hantei2( A,B )
    switch A
        case 1%�`�[���P���O�[�̂Ƃ�
            if B==2%�`�[���Q���`���L�̂Ƃ�
                R=1;
            elseif B==3%�`�[���Q���p�[�̂Ƃ�
                R=2;
            else
                R=0;
            end
        case 2%�`�[���P���`���L�̂Ƃ�
            if B==1%�`�[���Q���O�[�̂Ƃ�
                R=2;
            elseif B==3%�`�[���Q���p�[�̂Ƃ�
                R=1;
            else
                R=0;
            end      
        case 3%�`�[���P���p�[�̂Ƃ�
            if B==1%�`�[���Q���O�[�̂Ƃ�
                R=1;
            elseif B==2%�`�[���Q���`���L�̂Ƃ�
                R=2;
            else
                R=0;
            end
    end
end