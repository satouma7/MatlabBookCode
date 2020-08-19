Z=zeros(100,100);
for X=1:100
    for Y=1:100
        if X>=Y         %‚à‚µX>=Y‚Å‚ ‚ê‚ÎC
            Z(Y,X)=1;   % Z‚ÌYsX—ñ‚É1‚ğ‘ã“ü
        end             %4s–Ú‚Ìif•¶‚Í‚±‚±‚Ü‚Å
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;