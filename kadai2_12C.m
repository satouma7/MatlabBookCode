Z=zeros(100,100);
    for X=50:100        %X��50����100�܂ő���������(�E����)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+pi/2;   %atan(W/V)�Ƀ�/2�������ă�(Theta)���v�Z
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49      %X��1����49�܂ő���������(������)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+3*pi/2; %atan(W/V)��3��/2�������ă�(Theta)���v�Z
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;