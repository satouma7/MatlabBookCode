M=randi(3,2,10);%M=ceil(rand(2,10)*3);
for J=1:10
    for I=1:2
        if M(I,J)==1
            Janken='�O�[';
        elseif M(I,J)==2
            Janken='�`���L';
        else
            Janken='�p�[';
        end
        disp(strcat('�`�[��',num2str(I),'��',num2str(J),'�l�ڂ�', Janken,'�ł�'));
    end
end

