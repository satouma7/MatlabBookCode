M=ceil(rand(2,10)*3);
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
end