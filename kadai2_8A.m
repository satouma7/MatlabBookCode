M=ceil(rand*3);         %Mに1から３のランダムな整数を代入
if M==1                 %もしMが1の場合，
    Janken='グー';       % Jankenに'グー'を代入
elseif M==2             %そうではなくもしMが2の場合，
    Janken='チョキ';     % Jankenに'チョキ'を代入
else                    %それ以外の場合，
    Janken='パー';       % Jankenに'パー'を代入
end                     %2行目からのif文はここまで
disp(Janken);           %Jankenの内容を表示