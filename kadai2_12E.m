Z=zeros(100,100,100);
for T=1:100
    for X=1:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+pi/2+pi*(X<50);
            if Theta>2*pi
                Theta=Theta-2*pi;
            end
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
end
for T=1:100
    imagesc(Z(:,:,T),[0 100]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end