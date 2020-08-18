M=ceil(rand(2,10)*3);           %2行10列の行列Mに1から３のランダムな整数を代入
for J=1:10                      %Jを1から10まで増加させる（J回目）
    for I=1:2                   %Iを1から2まで増加させる（チームI）
        if M(I,J)==1            %もしM(I,J)が1の場合，
            Janken='グー';     % Jankenに'グー'を代入
        elseif M(I,J)==2        %そうではなくもしM(I,J)が2の場合，
            Janken='チョキ';    % Jankenに'チョキ'を代入
        else                    %それ以外の場合，
            Janken='パー';     % Jankenに'パー'を代入
        end                     %4行目からのif文はここまで
        disp(strcat('チーム',num2str(I),'の',num2str(J),'人目は', Janken,'です'));  %チームIのJ人目のじゃんけんの手を表示
    end                         %3行目まで戻る
end                             %2行目まで戻る