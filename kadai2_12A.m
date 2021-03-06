Z=zeros(100,100);               %100行100列の行列Zに０を代入
    for Y=1:100                 %Xを1から100まで増加させる
        for X=1:100             %Yを1から100まで増加させる
            V=X-50;W=Y-50;      %X軸, Y軸方向に50ずらしたVとWを計算
            R=sqrt(V*V+W*W);    %中心からの距離R(半径)を計算
            Theta=atan(W/V);    %VとWからθ(Theta)を計算
            if (R>30)&&(R<50)   %もしRが30から50の間であれば，
                Z(Y,X)=Theta*100/2/pi;  %Thetaから色の値を計算しZ(Y,X)代入
            end                 %7行目のif文はここまで
        end                     %3行目まで戻る
    end                         %2行目まで戻る
imagesc(Z);set(gca,'YDir','normal');colorbar;