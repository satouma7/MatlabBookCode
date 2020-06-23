Z=zeros(100,100);
for X=1:100
    for Y=1:100
        Z(Y,X)=((X-50)/10)^3+((Y-50)/4)^2;
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;
figure;surface(Z);colorbar;
