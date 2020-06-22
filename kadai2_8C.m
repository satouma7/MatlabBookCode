M=ceil(rand(2,10)*3);
for J=1:10
    for I=1:2
        switch M(I,J)
            case 1
                Janken='グー';
            case 2
                Janken='チョキ';
            case 3
                Janken='パー';
        end
        disp(strcat('チーム',num2str(I),'の',num2str(J),'人目は', Janken,'です'));
    end
end