Z=zeros(100,100,100);
for T=1:100
    for X=50:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+pi/2;    %atan(W/V)にπ/2と2π/100*Tを加えてθ(Theta)を計算
            if Theta>2*pi                       %もしThetaが2πよりも大きかったら，
                Theta=Theta-2*pi;               % Thetaから2π引く
            end                                 %8行目のif文はここまで
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+3*pi/2;  %atan(W/V)に3π/2と2π/100*Tを加えてθ(Theta)を計算
            if Theta>2*pi                       %もしThetaが2πよりも大きかったら，
                Theta=Theta-2*pi;               %Thetaから2π引く
            end                                 %21行目のif文はここまで
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
end
mov=VideoWriter('kadai2_12D', 'MPEG-4');    %動画保存用
open(mov);  %動画保存用
for T=1:100
    imagesc(Z(:,:,T),[0 100]);set(gca,'YDir','normal');colorbar;
    writeVideo(mov, getframe(gcf)); %動画保存用
    pause(0.001);
end
close(mov); %動画保存用