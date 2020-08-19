Z=zeros(100,100);
    for X=50:100        %X‚ð50‚©‚ç100‚Ü‚Å‘‰Á‚³‚¹‚é(‰E”¼•ª)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+pi/2;   %atan(W/V)‚ÉƒÎ/2‚ð‰Á‚¦‚ÄƒÆ(Theta)‚ðŒvŽZ
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49      %X‚ð1‚©‚ç49‚Ü‚Å‘‰Á‚³‚¹‚é(¶”¼•ª)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+3*pi/2; %atan(W/V)‚É3ƒÎ/2‚ð‰Á‚¦‚ÄƒÆ(Theta)‚ðŒvŽZ
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;