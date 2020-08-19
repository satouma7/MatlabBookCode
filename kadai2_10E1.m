Z=zeros(100,100);
for X=1:10              %Xを1から10まで増加させる
    for Y=1:100         %Yを1から100まで増加させる
        Z(Y,X)=10*X-Y;  %ZのY行X列に10*X-Yの値を代入
    end                 %3行目まで戻る
end                     %2行目まで戻る
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;