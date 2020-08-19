Z=zeros(100,100);
for X=1:10
    for Y=1:100
        Z(Y,X)=10*X-Y;
    end
end
Z=repmat(Z(1:100,1:10),1,10);   %Z‚Ì1‚©‚ç10—ñ‚Ì“à—e‚ð—ñ•ûŒü‚É10‰ñŒJ‚è•Ô‚µ‚½‚à‚Ì‚ðZ‚É‘ã“ü
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;