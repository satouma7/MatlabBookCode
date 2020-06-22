Z=zeros(100,100);
    for X=51:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+pi/2;
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
%     X=50;
%     for Y=1:100
%         V=X-50;W=Y-50;
%         R=sqrt(V*V+W*W);
%         Theta=atan(W/V)+pi/2;
%         if (R>30)&&(R<50)
%             Z(Y,X)=Theta*100/2/pi;
%         end
%     end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;