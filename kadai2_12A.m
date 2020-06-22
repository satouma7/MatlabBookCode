Z=zeros(100,100);
    for Y=1:100
        for X=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V);
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
imagesc(Z);set(gca,'YDir','normal');colorbar;
