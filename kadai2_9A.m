M=ceil(rand(2,10)*3);       %2行10列の行列Mに1から３のランダムな整数を代入 
Team1=0;Team2=0;Aiko=0;     %チーム1の勝ち数をTeam1，チーム2の勝ち数をTeam2，引き分けの数をAikoとする
for J=1:10                  %Jを1から10まで増加させる（J回目）
    for I=1:2               %Iを1から2まで増加させる（チームI）
        switch M(I,J)       %M(I,J)の値に従って場合分け
            case 1          %M(I,J)が1の場合，
                Janken='グー';  %Jankenに'グー'を代入
            case 2          %M(I,J)が2の場合，
                Janken='チョキ'; %Jankenに'チョキ'を代入
            case 3          %M(I,J)が3の場合，
                Janken='パー';  %Jankenに'パー'を代入
        end                 %5行目からのswitch文はここまで
        disp(strcat('チーム',num2str(I),'の',num2str(J),'人目は', Janken,'です'));  %チームIのJ人目のじゃんけんの手を表示
    end                     %4行目まで戻る
    Result=Hantei(M(1,J),M(2,J));   %J人目のチーム1の手M(1,J)とチーム2の手M(2,J)をHantei関数に渡し，結果をResultに代入
    switch Result           %Resultの値に従って場合分け
        case 1              %Resultが1の場合，
            Kekka='チーム１';Team1=Team1+1;    %チーム1の勝ちとし，Team1に1を加える
        case 2              %Resultが2の場合，
            Kekka='チーム2';Team2=Team2+1;    %チーム2の勝ちとし，Team2に1を加える
        case 0              %Resultが0の場合，
            Kekka='あいこ';Aiko=Aiko+1;        %引き分けとし，Aikoに1を加える
    end                     %16行目からのswitch文はここまで
    disp(strcat(num2str(J),'番目の勝負は', Kekka)); %J番目の勝負の結果としてKekkaの内容を表示
end                         %3行目まで戻る
disp(strcat('チーム１は', num2str(Team1),'勝',num2str(Team2),'敗',num2str(Aiko),'引き分け'));%チーム1の勝ち数Team1，負け数Team2，引き分け数Aikoを表示
disp(strcat('チーム２は', num2str(Team2),'勝',num2str(Team1),'敗',num2str(Aiko),'引き分け'));%チーム2の勝ち数Team2，負け数Team1，引き分け数Aikoを表示