A=ceil(3*rand+2);       %Aに3から５のランダムな整数を代入
B=fix(4*rand+3);        %Bに4から7のランダムな整数を代入
M=round(10*rand(A,B));  %A行B列の行列Mに0から10の乱数を代入
disp(strcat(num2str(A),'行',num2str(B),'列の行列です'));   %行列Mの行数Aと列数Bを表示する
for i=1:A               %Iを1からAまで増加させる（行）
    for j=1:B           %Jを1からBまで増加させる（列）
        disp(strcat(num2str(i),'行',num2str(j),'列は', num2str(M(i,j)),'です')); %行列MのA行B列の値を表示する
    end                 %6行目まで戻る
end                     %5行目まで戻る