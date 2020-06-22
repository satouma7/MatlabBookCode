Z=zeros(100,100);
for X=1:10
    for Y=1:100
        Z(Y,X)=10*X-Y;
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;