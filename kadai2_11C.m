Z=zeros(100,100,100);
for T=1:100
    for X=1:100
        for Y=1:100
            Z(Y,X,T)=sin(pi/100*X+2*pi/100*T)+2*cos(2*pi/100*Y+3*pi/100*T);
        end
    end
end
for T=1:100
    imagesc(Z(:,:,T),[-3 3]);set(gca,'YDir','normal');colorbar;
    pause(0.01);
end