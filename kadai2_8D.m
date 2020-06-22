M=ceil(rand(2,10)*3);
Team1=0; Team2=0; Aiko=0;
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
    switch M(1,J)
        case 1%チーム１がグーのとき
            if M(2,J)==2
                Kekka='チーム１の勝ち';Team1=Team1+1;
            elseif M(2,J)==3
                Kekka='チーム２の勝ち';Team2=Team2+1;
            else
                Kekka='あいこ';Aiko=Aiko+1;
            end
        case 2%
            if M(2,J)==1
                Kekka='チーム２の勝ち';Team2=Team2+1;
            elseif M(2,J)==3
                Kekka='チーム１の勝ち';Team1=Team1+1;
            else
                Kekka='あいこ';Aiko=Aiko+1;
            end      
        case 3
            if M(2,J)==1
                Kekka='チーム１の勝ち';Team1=Team1+1;
            elseif M(2,J)==2
                Kekka='チーム２の勝ち';Team2=Team2+1;
            else
                Kekka='あいこ';Aiko=Aiko+1;
            end
    end
    disp(strcat(num2str(J),'番目の勝負は', Kekka));
end
disp(strcat('チーム１は',num2str(Team1),'勝',num2str(Team2),'敗',num2str(Aiko),'引き分け'));
disp(strcat('チーム２は',num2str(Team2),'勝',num2str(Team1),'敗',num2str(Aiko),'引き分け'));
