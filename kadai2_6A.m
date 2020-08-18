M=round(10*rand(4,5));  %4行5列の行列Mに0から10の乱数を代入
for I=1:4               %Iを1から4まで増加させる（行）
    for J=1:5           %Jを1から5まで増加させる（列）
        disp(strcat(num2str(I),'行',num2str(J),'列は', num2str(M(I,J)),'です')); %行列MのI行J列の値を表示する
    end                 %3行目まで戻る
end                     %2行目まで戻る
