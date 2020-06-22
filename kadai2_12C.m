Z=zeros(100,100);
    for X=50:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            theta=atan(W/V)+pi/2;
            if (R>30)&&(R<50)
                Z(Y,X)=theta*100/2/pi;
            end
        end
    end
    for X=1:49
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            theta=atan(W/V)+3*pi/2;
            if (R>30)&&(R<50)
                Z(Y,X)=theta*100/2/pi;
            end
        end
    end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;