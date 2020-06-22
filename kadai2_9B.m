M=ceil(rand(2,10)*3);
Team1=0;Team2=0;Aiko=0;
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
    Result=Hantei2(M(1,J),M(2,J));
    switch Result
        case 1
            Kekka='チーム１';Team1=Team1+1;
        case 2
            Kekka='チーム２';Team2=Team2+1;
        case 0
            Kekka='あいこ';Aiko=Aiko+1;
    end
    disp(strcat(num2str(J),'番目の勝負は', Kekka));
end
disp(strcat('チーム１の結果は', num2str(Team1),'勝',num2str(Team2),'敗',num2str(Aiko),'引き分け'));
disp(strcat('チーム２の結果は', num2str(Team2),'勝',num2str(Team1),'敗',num2str(Aiko),'引き分け'));

function [ R ] = Hantei2( A,B )
    switch A
        case 1
            if B==2
                R=1;
            elseif B==3
                R=2;
            else
                R=0;
            end
        case 2
            if B==1%
                R=2;
            elseif B==3
                R=1;
            else
                R=0;
            end      
        case 3
            if B==1
                R=1;
            elseif B==2
                R=2;
            else
                R=0;
            end
    end
end
