Z=zeros(100,100);
for X=1:10
    for Y=1:20
        Z(Y,X)=X-Y;
    end
end
Z=repmat(Z(1:20,1:10),5,10);
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;