function [ R ] = Hantei( A,B )
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