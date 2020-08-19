Z=zeros(100,100);   %100行100列の行列Zに0を代入
for X=1:100         %Xを1から100まで増加させる
    for Y=1:100     %Yを1から100まで増加させる
        Z(Y,X)=((X-50)/10)^3+((Y-50)/4)^2;  %ZのY行X列に((X-50)/10)^3+((Y-50)/4)^2の値を代入
    end             %3行目まで戻る
end                 %2行目まで戻る
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;    %新しいウィンドウにZの内容を２次元表示
figure;surface(Z);colorbar; %新しいウィンドウにZの内容を3次元表示