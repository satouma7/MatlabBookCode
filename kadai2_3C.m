A=rand(3,4);            %3行4列の行列Aに乱数を代入
S1=0;S2=0;              %S1，S2に0を代入
for I=1:3               %Iを1から3まで増加させる（行）
    for J=1:4           %Jを1から4まで増加させる（列）
        S1=S1+A(I,J);   %S1にAの要素を加算し， S1に代入
        S2=S2+A(I,J)^2; %S2にAの要素の二乗を加算し， S2に代入
    end                 %4行目まで戻る
end                     %5行目まで戻る
S1                      %S1の内容を表示
S2                      %S2の内容を表示     