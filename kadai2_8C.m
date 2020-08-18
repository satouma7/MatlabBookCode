M=ceil(rand(2,10)*3);           %2行10列の行列Mに1から３のランダムな整数を代入
for J=1:10                      %Jを1から10まで増加させる（J回目）
    for I=1:2                   %Iを1から2まで増加させる（チームI）
        switch M(I,J)           %M(I,J)の値に従って場合分け
            case 1              %M(I,J)が1の場合，
                Janken='グー';   % Jankenに'グー'を代入
            case 2              %M(I,J)が2の場合，
                Janken='チョキ'; % Jankenに'チョキ'を代入
            case 3              %M(I,J)が3の場合，
                Janken='パー';   % Jankenに'パー'を代入
        end                     %4行目からのswitch文はここまで
        disp(strcat('チーム',num2str(I),'の',num2str(J),'人目は', Janken,'です'));   %チームIのJ人目のじゃんけんの手を表示
    end                         %3行目まで戻る
end                             %2行目まで戻る