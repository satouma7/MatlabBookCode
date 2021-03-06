Z=zeros(100,100);
    for X=50:100        %Xを50から100まで増加させる(右半分)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+pi/2;   %atan(W/V)にπ/2を加えてθ(Theta)を計算
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49      %Xを1から49まで増加させる(左半分)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+3*pi/2; %atan(W/V)に3π/2を加えてθ(Theta)を計算
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;