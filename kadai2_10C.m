Z=zeros(100,100);
for X=1:100
    for Y=1:100
        if X>=Y
            Z(Y,X)=1;
        end
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;