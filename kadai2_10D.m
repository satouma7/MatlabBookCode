Z=zeros(100,100);
for X=1:50              %Xを1から50まで増加させる: 左上の領域
    for Y=1:50          %Yを1から50まで増加させる
        Z(Y,X)=X+Y;     %ZのY行X列にX+Yの値を代入
    end                 %3行目まで戻る
end                     %2行目まで戻る
for X=51:100            %Xを51から100まで増加させる: 右上の領域
    for Y=1:50          %Yを1から50まで増加させる
        Z(Y,X)=Y-X+100; %ZのY行X列にY-X+100の値を代入
    end                 %8行目まで戻る
end                     %7行目まで戻る
for X=1:50              %Xを1から50まで増加させる: 左下の領域
    for Y=51:100        %Yを51から100まで増加させる
        Z(Y,X)=X-Y+100; %ZのY行X列にX-Y+100の値を代入
    end                 %13行目まで戻る
end                     %12行目まで戻る
for X=51:100            %Xを51から100まで増加させる: 右下の領域
    for Y=51:100        %Yを51から100まで増加させる
        Z(Y,X)=200-(X+Y);%ZのY行X列に200-(X+Y)の値を代入
    end                 %18行目まで戻る
end                     %17行目まで戻る
imagesc(Z);set(gca,'YDir','normal');colorbar;