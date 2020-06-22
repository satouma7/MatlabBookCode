M=randi(3,2,10);%M=ceil(rand(2,10)*3);
for J=1:10
    for I=1:2
        if M(I,J)==1
            Janken='グー';
        elseif M(I,J)==2
            Janken='チョキ';
        else
            Janken='パー';
        end
        disp(strcat('チーム',num2str(I),'の',num2str(J),'人目は', Janken,'です'));
    end
end

