Z=zeros(100,100);               %100s100—ñ‚Ìs—ñZ‚É‚O‚ð‘ã“ü
    for Y=1:100                 %X‚ð1‚©‚ç100‚Ü‚Å‘‰Á‚³‚¹‚é
        for X=1:100             %Y‚ð1‚©‚ç100‚Ü‚Å‘‰Á‚³‚¹‚é
            V=X-50;W=Y-50;      %XŽ², YŽ²•ûŒü‚É50‚¸‚ç‚µ‚½V‚ÆW‚ðŒvŽZ
            R=sqrt(V*V+W*W);    %’†S‚©‚ç‚Ì‹——£R(”¼Œa)‚ðŒvŽZ
            Theta=atan(W/V);    %V‚ÆW‚©‚çƒÆ(Theta)‚ðŒvŽZ
            if (R>30)&&(R<50)   %‚à‚µR‚ª30‚©‚ç50‚ÌŠÔ‚Å‚ ‚ê‚ÎC
                Z(Y,X)=Theta*100/2/pi;  %Theta‚©‚çF‚Ì’l‚ðŒvŽZ‚µZ(Y,X)‘ã“ü
            end                 %7s–Ú‚Ìif•¶‚Í‚±‚±‚Ü‚Å
        end                     %3s–Ú‚Ü‚Å–ß‚é
    end                         %2s–Ú‚Ü‚Å–ß‚é
imagesc(Z);set(gca,'YDir','normal');colorbar;